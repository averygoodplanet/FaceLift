class User < ActiveRecord::Base
  # Removed :registerable from defaults, because we want only one user (don't want new users registering.)
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
