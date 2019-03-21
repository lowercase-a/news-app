class Api::ArticlesController < ApplicationController
  def index
    # make HTTP request from my controller
    search_term = params[:search]
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{search_term}&from=#{params[:date]}&sortBy=publishedAt&apiKey=#{ENV["API_KEY"]}")
    render json: response.parse
  end
end
