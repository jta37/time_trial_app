require 'bcrypt'

class User < ActiveRecord::Base
	has_many :articles

  has_secure_password
  validates_presence_of :email

  def self.confirm(email_param, password_param)
    user = User.find_by({email: email_param})
    user.authenticate(password_param)
  end


end
