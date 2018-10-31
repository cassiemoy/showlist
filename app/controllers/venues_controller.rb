class VenuesController < ApplicationController

  def new
    @venue = Venue.new
  end


  def create
    @venue = Venue.new
    @venue.assign_attributes(venue_params)
    @venue.save!

    redirect_to venues_path
  end
 
  private

  def venue_params
    params.require(:venue).permit(:name)
  end
end
