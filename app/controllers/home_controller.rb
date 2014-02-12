class HomeController < ApplicationController
  def index
    @access_token = "4978765e79e36981bf2ecb0ca00e3d15"
    @search = params[:search]
    get_api if @search
  end

  def get_api
    return unless @search.empty? == false
    api_url = "http://localhost:3000//api/movies/#{@search}?access_token=#{@access_token}"
    @response = HTTParty.get(api_url)
    puts @response
  end
end
