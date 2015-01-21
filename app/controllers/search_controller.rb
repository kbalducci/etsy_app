require 'open-uri'
class SearchController < ApplicationController
  def index
    query = params.fetch(:query, 'wood')
    url = "https://openapi.etsy.com/v2/listings/active?api_key=21emm2wiz86xu3vg2yspnuex&keywords=#{query}"
    response = JSON.parse(open(url).read)
    @items = response['results']
  end
end
