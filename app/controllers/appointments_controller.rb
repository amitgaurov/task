class AppointmentsController < ApplicationController
	  
  def index   
    @appointments = Appointment.all   
  end   
   
  
  def show   
    @appointment = Appointment.find(params[:id])   
  end   
   
  
  def new   
    @appointment = Appointment.new   
  end   
   
 
  def create   
    @appointment = Appointment.new(appointment_params)   
    if @appointment.save   
      flash[:notice] = 'Appointment added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit Appointment!'   
      render :new   
    end   
  end   
   
 
  def edit   
    @appointment= Appointment.find(params[:id])   
  end   
   
 
  def update   
    @appointment = Appointment.find(params[:id])   
    if @product.update_attributes(appointment_params)   
      flash[:notice] = 'Appointment updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit Appointment!'   
      render :edit   
    end   
  end   
   
  
  def destroy   
    @appointment = Appointment.find(params[:id])   
    if @appointment.delete   
      flash[:notice] = 'Appointment deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this Appointment!'   
      render :destroy   
    end   
  end   
   
 private
  def appointment_params   
    params.require(:appointment).permit(:timing)   
  end   
   
end  

