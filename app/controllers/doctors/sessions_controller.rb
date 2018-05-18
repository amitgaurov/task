# frozen_string_literal: true

class Doctors::SessionsController < Devise::SessionsController
  # prepend_before_action :configure_sign_in_params, only: [:create]

  # # GET /resource/sign_in
  # def new
  #  @doctor = Doctor.find(params[:id])
  # super
  # end

  # # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

   protected

  
 def after_sign_in_path_for(resource)
    edit_doctor_registration_path(current_doctor) #your path
 end 
 
 def after_sign_out_path_for(resource_or_scope)
     root_path
 end 
 


#   # If you have extra params to permit, append them to the sanitizer.
#   def configure_sign_in_params
#    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
#   end
# end
end