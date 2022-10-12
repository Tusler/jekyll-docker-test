# Create a Jekyll container from a ruby alpine image

# At min, use ruby 2.7
FROM ruby:2.7-alpine3.15

# Add Jekyll Dependencies

RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the ruby bundler and install Jekyll

RUN gem update bundler && gem install bundler jekyll

