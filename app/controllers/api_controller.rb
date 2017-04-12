
class ApiController < ApplicationController
  def index
  end

  def search
    if request.post?
      search_string = params[:search][:query]
      url = "https://www.moneyadviceservice.org.uk/en/search?query=#{search_string}"
      @doc = Nokogiri::HTML(open(url))
    end
  end
end
