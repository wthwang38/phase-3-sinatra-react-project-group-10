class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/sneakers" do
    sneakers = Sneaker.all
    sneakers.to_json
  end

end
