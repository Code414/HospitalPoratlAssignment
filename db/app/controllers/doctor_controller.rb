# class DoctorController < ApplicationController
#   def index
#   end
# end

# app/controllers/doctor_controller.rb
class DoctorController < ApplicationController
  before_action :require_login

  def index
  end
end
