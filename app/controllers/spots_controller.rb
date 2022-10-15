class SpotsController < ApplicationController
  def index
    spots = Spot.all

    results = Geocoder.search(params["address"])
    current_lat = results[0]["boundingbox"]
    # current_long = results["data"]["boundingbox"][1]
    render json: current_lat.as_json
    # spots.each do |spot|
    #   the_distance = Geocoder::Calculations.distance_between([current_lat, current_long], [spot.latitude, spot.longitude])
    #   spot.distance = the_distance
    # end
    # render json: spots.as_json

    # convert the current address to lat long
    # .each loop compare lat long, with current lat long, find the distance
    # Geocoder::Calculations.distance_between([47.858205,2.294359], [40.748433,-73.985655])
    # else
    # render json: { message: "User must be logged in to view all Spots" }
    # end
  end

  def create
    if current_user
      response = Cloudinary::Uploader.upload(params[:image], resource_type: :auto)
      cloudinary_url = response["secure_url"]

      results = Geocoder.search(params[:address])
      the_latitude = results.first.coordinates[0]
      the_longitude = results.first.coordinates[1]
      spot = Spot.new(
        name: params[:name],
        address: params[:address],
        bust: params[:bust],
        description: params[:description],
        category: params[:category],
        user_id: current_user.id,
        image_url: params[:image_url],
        latitude: the_latitude,
        longitude: the_longitude,
        image: cloudinary_url,
      )
      spot.save
      render json: spot.as_json
    else
      render json: { message: "User must be logged in to add a new spot" }
    end
  end

  def show
    spot = Spot.find_by(id: params[:id])
    render json: spot.as_json

    # Comment.where(spot_id: spot.id)
  end
end
