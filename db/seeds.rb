# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Settings.destroy_all()
Settings["System.name"] = "First Coast Green Pages"
Settings["Google.ApiKey"] = 'AIzaSyBBeWJOpwAsjKC-C2D90JURMRNXn0Sa6rE'
Settings["Mapping.DefaultLat"] = 30.3369    # Jacksonville, FL
Settings["Mapping.DefaultLong"] = -81.6614  # Jacksonville, FL

## Users
User.destroy_all()

# An administrator
admin = User.create(email: 'admin@fcgp.org', password: 'password')
admin.toggle!(:admin)

# A moderator
mod = User.create(email: 'moderator@fcgp.org', password: 'password')
mod.toggle!(:moderator)

# An individual member
member  = User.create(email: 'member@fcgp.org', password: 'password')

# A vendor
vendor  = User.create(email: 'vendor@fcgp.org', password: 'password')
