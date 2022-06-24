class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/sneakers" do
    sneakers = Sneaker.all
    sneakers.to_json(include: { reviews: { include: :user } })
  end
  
  get "/sneakers/:id" do
    sneakers = Sneaker.find(params[:id])
    sneakers.to_json(include: { reviews: { include: :user } })
  end

  post "/sneakers" do 
    sneaker = Sneaker.create(
      name: params[:name],
      price: params[:price],
      year: params[:year],
      image: params[:image],
      condition: params[:condition]
    )
    sneaker.to_json
  end

  post "/reviews" do
    user = User.find_or_create_by(name: params[:name])
    u2 = User.find_by(name: params[:name]).id
    review = Review.create(
      comment: params[:comment], 
      sneaker_id: params[:sneaker_id],
      user_id: u2
    )
    review.to_json
  
  end

  patch "/sneakers/:id" do
    sneaker = Sneaker.find(params[:id])
    sneaker.update(
      name: params[:name],
      price: params[:price],
      year: params[:year],
      image: params[:image],
      condition: params[:condition]
    )
    review.to_json
  end
  
  delete "/sneakers/:id" do
    sneakers = Sneaker.find(params[:id])
    sneakers.delete
    status 204
  end

end
