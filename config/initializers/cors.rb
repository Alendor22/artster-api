# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'postgres://ydzfddusgpaeai:694c9ab74648710aa92cd4ef5aea6146c0baa690ba063ecb0525992592a69707@ec2-52-87-135-240.compute-1.amazonaws.com:5432/d77tblu1ufkhin'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
