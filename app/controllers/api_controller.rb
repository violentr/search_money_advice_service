require 'net/http'

class ApiController < ApplicationController
  def index
  end

  def search
    if request.post?
      search_string = params[:search][:query]
      url = URI("https://www.moneyadviceservice.org.uk/en/search?query=#{search_string}")
      w = Net::HTTP.get(url)
      render html: w.html_safe
    end
  end
end
