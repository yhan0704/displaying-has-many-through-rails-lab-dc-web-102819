class DoctorsController < ApplicationController
    
    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def show
        @doctor = Doctor.find(params[:id])
        
    end

    def create
        doctor = Doctor.create(params.require(:doctor).permit(:name, :department))
        redirect_to doctor_path(doctor)
    end
end
