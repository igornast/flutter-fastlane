FROM cirrusci/flutter:2.8.1

RUN flutter precache --no-ios --no-web --no-linux --no-windows --no-winuwp --no-macos --no-fuchsia \
 && apt update \
 && apt install -y ruby ruby-dev rubygems \
 && gem install fastlane -NV