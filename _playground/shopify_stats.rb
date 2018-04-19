# Shopify Stats
# Copyright (C) 2018 Justin Hartman <https://justin.hartman.me>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

require 'rubygems'
require 'redis'

$redis = Redis.new

class Request
  def referrer
    'http://www.google.com/search?q=Shopify+Store'
  end

  def search_terms
    'Shopify Store'
  end

  def search_engine
    'Google'
  end

  def object
    'products-1'
  end

  def category
    'organic'
  end

  def new_session?
    true
  end
end

class ShopStats
  def initialize(shop_id)
    @shop_id = shop_id
    @now = Time.now
  end

  def global
    ShopStats.new('global')
  end

  def incr(*args)
    options = if args.last.is_a?(Hash)
      args.pop
    end

    term = args.join(":")

    $redis.incr "#{@now.year}/#{@shop_id}/#{term}"
    $redis.incr "#{@now.year}/#{@now.month}/#{@shop_id}/#{term}"
    $redis.incr "#{@now.year}/#{@now.month}/#{@now.day}/#{@shop_id}/#{term}"
    $redis.incr "#{@now.year}/#{@now.month}/#{@now.day}/#{@now.hour}/#{@shop_id}/#{term}"
    
    if options 
      raise ArgumentError, 'expecting two arguments' unless args.length == 2
      $redis.sadd "#{@now.year}/#{@now.month}/#{@now.day}/#{@now.hour}/#{@shop_id}/#{args[0]}", args[1]
    end
  end
end

class GlobalStats < ShopStats
  def initialize
    super('global')
  end
end

request = Request.new
redis = Redis.new

now = Time.now
shop_id = 100014
 
stats = ShopStats.new(shop_id)

stats.global.incr 'hits'
stats.incr 'hits'

if request.object
  stats.incr 'objects', request.object 
end

if request.new_session?
  stats.incr 'visits'
  stats.incr 'traffic', request.category
  
  stats.incr 'referrer', request.referrer, :collection => true if request.referrer
  stats.incr 'search-engines', request.search_engine, :collection => true if request.search_engine
  stats.incr 'search-terms', request.search_terms, :collection => true if request.search_terms
end
