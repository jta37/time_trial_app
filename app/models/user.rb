require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email
  
  validates_confirmation_of :email
  validates_presence_of :email
  validates_presence_of :email_confirmation

  validates_confirmation_of :password
  validates_presence_of :password
  validates_presence_of :password_confirmation

  has_many :articles

  # def self.confirm(email_param, password_param)
  #   user = User.find_by({email: email_param})
  #   user.authenticate(password_param)
  # end
  def self.confirm(email_param, password_param)
    user = User.find_by({email: email_param})
    if user
      user.authenticate(password_param)
    end
  end

end
