# Ruby on Rails routes example
# rails new myapp && cd myapp
Rails.application.routes.draw do
  root "pages#home"
  get "hello", to: "pages#hello"
  resources :users, only: [:index, :show]
end

# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    render plain: "Hello from Ruby on Rails!"
  end

  def hello
    render json: { message: "Hello, Rails!" }
  end
end
