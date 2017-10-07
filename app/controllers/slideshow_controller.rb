class SlideshowController < ApplicationController
  def shots
    require "faraday"
    require "json"

    @image_urls = []

    begin

      client = Faraday.new
      res = client.get do |req|
        req.url ENV["DRIBBBLE_URL"]
        req.headers['Authorization'] = "Bearer #{ENV["DRIBBBLE_TOKEN"]}"
      end

      body = JSON.parse res.body

      body.each do |b|
        hidpi_url = b["images"]["hidpi"]
        @image_urls.push(hidpi_url) if hidpi_url != nil
      end

    rescue
      # Whether DRIBBBLE_URL or DRIBBBLE_TOKEN is incorrect or unspecified.
      
    end

  end
end
