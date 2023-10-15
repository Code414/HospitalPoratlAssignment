# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#   end

#   def destroy
#   end
# end

# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.role == 'receptionist'
        redirect_to receptionist_path
      elsif user.role == 'doctor'
        redirect_to doctor_path
      else
        flash[:alert] = 'Invalid role'
        redirect_to root_path
      end
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new'
    end
  end
end
