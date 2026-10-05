#!/bin/zsh
cd /Users/vandanaverma/Downloads/www-event-2026-AppSecDays-India-main || exit 1
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
unset BUNDLE_PATH
export RUBYOPT="-r./_plugins/ruby_compatibility.rb"
export PAGES_REPO_NWO=OWASP/www-event-2026-AppSecDays-India
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
