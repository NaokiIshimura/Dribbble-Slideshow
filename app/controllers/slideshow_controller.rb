class SlideshowController < ApplicationController
  def shots
    require 'faraday'
    require 'json'

    @image_urls = []

    client = Faraday.new
    res = client.get do |req|
      req.url ENV['DRIBBBLE_URL']
      req.headers['Authorization'] = "Bearer #{ENV['DRIBBBLE_TOKEN']}"
    end

    if res.status == 200
      body = JSON.parse res.body
      body.each do |b|
        hidpi_url = b['images']['hidpi']
        @image_urls.push(hidpi_url) unless hidpi_url.nil?
      end
    end
  end
end
