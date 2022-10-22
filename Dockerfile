FROM cirrusci/flutter:3.3.5

RUN flutter precache --no-ios --no-web --no-linux --no-windows --no-macos --no-fuchsia \
    && apt update \
    && apt install -y ruby ruby-dev rubygems \
    && gem install fastlane -NV