# We need ruby 3.0.0. From docker hub
FROM ruby:3.0.0

# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 3000

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Install node, found from the internet
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs

# Install yarn, from readme
RUN npm install -g yarn 

# Install the correct bundler version
RUN gem install bundler:2.2.11

# Copy the all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Install all dependencies from Gemfile (Gemfile copied on previous step)
RUN bundle install

# We pick the production guide mode since we have no intention of developing the software inside the container.
# Run database migrations by following instructions from README
RUN rails db:migrate RAILS_ENV=production

# Precompile assets by following instructions from README
RUN rake assets:precompile 

# And finally the command to run the application
CMD ["rails", "s", "-e", "production"]