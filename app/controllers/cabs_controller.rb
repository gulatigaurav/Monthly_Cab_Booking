class CabsController < PlacesController  
  
  def index
  @cabs = Cab.all
  @page_title="Cabs";
  super
  end

  def show
  @cab= Cab.find(params[:id])
  end

  def new
  end

  def delete
  end

  def update
  end

private
def cab_params
params.require(:cab).permit(:name, :reg_no, :seats, :aircond, :monthly_rental)
end

end
