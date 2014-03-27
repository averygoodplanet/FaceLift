# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user = User.new :name => 'Gary Busey', :email => 'averygoodplanet@gmail.com', :password => 'topSecret9*', :password_confirmation => 'topSecret9*'
# user.save!

# user = User.new(
#     :email                 => "admin@xxxxx.xxx",
#     :password              => "123456",
#     :password_confirmation => "123456"
# )
# # user.skip_confirmation!
# user.save!

User.create!(
  :email => 'averygoodplanet@gmail.com',
  :first_login => false,
  :password => 'P@ssw0rd',
  :password_confirmation => 'P@ssw0rd'
  )