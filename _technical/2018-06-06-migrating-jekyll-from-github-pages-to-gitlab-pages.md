---
title: "Migrating Jekyll from GitHub Pages to GitLab Pages"
layout: single
published: true
classes: wide
toc: false
date: 2018-06-06T17:21:06+02:00
last_modified_at: 2020-07-21T00:40:32+02:00
sitemap: 
  changefreq: monthly
  priority: 0.9
categories:
- gitlab
tags:
- technical
- gitlab
header:
  overlay_image: '/assets/images/technical/publishing-jekyll-on-gitlab-pages.jpg'
  overlay_color: "#3C257B"
  overlay_filter: rgba(0, 0, 0, 0.2)
  caption: "Photo by [GitLab](https://about.gitlab.com/2015/07/03/our-new-logo)"
  teaser: '/assets/images/technical/publishing-jekyll-on-gitlab-pages_580x300.jpg'
image: '/assets/images/technical/publishing-jekyll-on-gitlab-pages_580x300.jpg'
excerpt: This post will show you how to migrate a Jekyll site from GitHub Pages to GitLab Pages.
---
[I recently moved this site][1] from GitHub Pages to [GitLab Pages][gitlab]. As both platforms provide support for Jekyll one would imagine that the migration would be simple enough. Sadly, this wasn't the case and this post is aimed at helping others easily migrate to GitLab Pages.

## Updating your Gemfile

The first thing you need to do is update your Gemfile so that it will work with GitLab Pages. Here's my modified Gemfile which you can use to base any changes you need to make to yours. If you don't have a `Gemfile` then you will need to create one.

```ruby
source 'https://rubygems.org'
ruby RUBY_VERSION # Added for GitLab

gem "jekyll", "3.7.3" # Explicitly set the Jekyll version for GitLab
gem 'minimal-mistakes-jekyll' # My theme for the site

# Add your plugins below as you would on GitHub Pages
group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-seo-tag'
  gem 'jekyll-sitemap'
  gem 'jekyll-paginate'
  gem 'jekyll-algolia'
  gem 'jekyll-include-cache'
  gem 'jekyll-last-modified-at'
  gem 'jekyll-redirect-from'
  gem 'jemoji'
  gem 'jekyll-mentions'
  gem 'jekyll-import'
end
```

If you have this in your Gemfile, `gem 'github-pages'`, then you need to remove it completely. This Gem provides meta-data, specific for GitHub and won't be needed on GitLab Pages.

## Create a .gitlab-ci.yml file

New to your repository, you will need to create a new `.gitlab-ci-yml` file. This file contains configuration settings for [GitLab's Continuous Integration & Deployment][ci] which is required to build your Jekyll site.

I had a lot of problems trying to get my site to build using the GitLab CI service but the file below solves any problems you may encounter. You can copy it as is and your site should build without error.

```yaml
image: ruby:2.3

cache:
  paths:
  - vendor/

before_script:
  - apt-get update -y
  - apt-get install -y locales
  - echo "en_US UTF-8" > /etc/locale.gen
  - locale-gen en_US.UTF-8
  - export LANG=en_US.UTF-8
  - export LANGUAGE=en_US:en
  - export LC_ALL=en_US.UTF-8
  - gem install jekyll bundler --install-dir vendor/ruby/2.3.0
  - gem install sass --no-user-install --install-dir vendor/ruby/2.3.0
  - bundle install --path vendor

variables:
  JEKYLL_ENV: production

pages:
  stage: deploy
  script:
  - bundle exec jekyll build -d public
  artifacts:
    paths:
    - public
  only:
  - master

test:
  stage: test
  script:
  - bundle exec jekyll build -d test
  artifacts:
    paths:
    - test
  except:
  - master
```

The theme I am using for my Jekyll site had some issues when trying to build the site running `jekyll build` and for whatever reason I had to set the locale before the site would build successfully. It appears that GitLab Pages doesn't set a default locale so you need to specifically define this in the configuration file.

Note that I am installing all the Gems in the locally configured `./vendor/` folder. This just keeps everything neat and tidy. I've also added a `before_script:` YAML setting and moved all the installs to this part of the configuration file. By doing this, all the dependencies are installed before you run any of the deployment methods, be it testing or production.

## Update your \_config.yml

In your `_config.yml` you need exclude the `vendor` folder as well as the `Gemfile` to avoid Jekyll from including these when it builds the site. Add, or update, the following to your `_config.yml` file.

```yaml
exclude:
  - Gemfile
  - Gemfile.lock
  - vendor
```

I hope that this helps you in successfully migrating your GitHub Pages to GitLab.

[1]: https://justin.hartman.me
[gitlab]: https://about.gitlab.com/features/pages/
[ci]: https://about.gitlab.com/features/gitlab-ci-cd/
