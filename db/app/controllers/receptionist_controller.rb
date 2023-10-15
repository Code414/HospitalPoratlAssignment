# class ReceptionistController < ApplicationController
#   def index
#   end
# end


# app/controllers/receptionist_controller.rb
class ReceptionistController < ApplicationController
  #before_action :require_login

  def index
    render 'receptionist_portal'
  end
end
