#!/usr/bin/env puma

environment ENV['RAILS_ENV'] || 'production'
pidfile "/var/www/budmag/shared/tmp/pids/puma.pid"
stdout_redirect "/var/www/budmag/shared/tmp/log/stdout", "/var/www/budmag/shared/tmp/log/stderr"
threads 2, 16
workers 2
bind "unix:///var/www/budmag/shared/tmp/sockets/puma.sock"
daemonize true