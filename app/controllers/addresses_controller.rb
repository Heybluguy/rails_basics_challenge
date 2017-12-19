class AddressesController < ApplicationController

def new
  @address = Address.new
end

def create
  @student = Student.find(params[:student_id])
  @address = Address.new(address_params)
  @address.student = @student
  @address.save
  redirect_to student_path(@student)
end

private

    def address_params
      params.require(:address).permit(:description, :street, :city, :state, :zipcode)
    end

end