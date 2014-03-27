class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  # Removed :registerable from defaults, because we want only one user (don't want new users registering.)
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
