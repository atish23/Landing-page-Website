# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
    contact = Contact.create( :contact_no=> '+91-8793857791' ,:company_email => 'aatish93maske@gmail.com')
    user = Admin.create! :email => 'admin@admin.com', :password => 'admin123', :password_confirmation => 'admin123'
#   Mayor.create(name: 'Emanuel', city: cities.first)
