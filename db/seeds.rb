# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
User.delete_all
User.create(:username => 'root', :password => 'root', :password_confirmation => 'root', :role => 'admin')
User.create(:username => 'test', :password => 'test', :password_confirmation => 'test', :role => 'operator')

