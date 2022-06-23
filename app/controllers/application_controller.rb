class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/sneakers" do
    sneakers = Sneaker.all
    sneakers.to_json(include: { reviews: { include: :user } })
  end
  post "/sneakers" do 
    sneakers = Sneaker.create(name: params[:name])
    options =
    sneakers.to_json(options)
  end

  patch "/sneakers/:id" do
    sneakers = Sneaker.find(params[:id])
    sneakers.update()
    sneakers.to_json
  end
  
  delete "/sneakers/:id" do
    sneakers = Sneaker.find(params[:id])
    sneakers.delete
    status 204
  end

end
