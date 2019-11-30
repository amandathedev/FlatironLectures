class DoctorsController < ApplicationController
  before_action :find_doctor

  def new
    @doctor = Doctor.new
  end

  def create
    # Passing in doctor_params is possible because of the private method below
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctor_path(@doctor)
    else
      redirect_to new_doctor_path
    end
  end

  def edit
    # find_doctor
    # Not needed because of before_action above
  end

  def update
    # find_doctor
  end

  def show
    # find_doctor
  end

  #   Private methods are not accessible outside of this controller. Everything below here is private
  private

  def doctor_params
    # .require won't allow you to pass anything in without the doctor key first
    # .permit allows the other attributes to be passed in
    params.require(:doctor).permit(:name, :specialty)
  end

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end
end
