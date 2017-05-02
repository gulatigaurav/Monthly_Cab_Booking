class StudentsController < PlacesController

def index 
@students= Student.all
@places=Place.all	
#super
#@students = Student.new(student_params)
#@students.save
end
def show

	@student=Student.find(params[:id])
end

def new 
@student=Student.new({:name=>'E.g. Rahul'})
end

def create  
@places=Place.all	
@student = Student.new(student_params)
@places.each do |place|

 	
if  @student.save 

if place.destination=@student.pick_uo_loc
	redirect_to(student_path(@student)) and return # I HAVE TO REDIRECT TO SHOW PAGE 
## I think I have to change this to redirect to a- page where all the matching cabs are available ##
else 
	render('new') and return
end



else
redirect_to(cabs_path) and return
	end

end
end


def update
end

def destroy 
end
 
private

def student_params
params.require(:student).permit(:name, :roll, :address, :phone, :pick_uo_loc)
end


end
