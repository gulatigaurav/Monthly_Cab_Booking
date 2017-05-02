class PlacesController < ApplicationController
  def index
  	@places=Place.all
  end


private
def place_params
params.require(:place).permit(:cabs_id , :source , :destination , :via)
end 


end
