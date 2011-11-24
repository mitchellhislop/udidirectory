class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :udids
end
