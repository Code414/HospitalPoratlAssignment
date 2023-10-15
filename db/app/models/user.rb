# class User < ApplicationRecord
# end

# app/models/user.rb
class User < ApplicationRecord
    validates :role, presence: true
    has_secure_password
  end
  