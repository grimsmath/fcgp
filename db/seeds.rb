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

## Members
Member.destroy_all()

# An administrator
admin = Member.create(email: 'admin@green.org', password: 'password')
admin.toggle!(:admin)

# A moderator
mod = Member.create(email: 'mod@green.org', password: 'password')
mod.toggle!(:moderator)

# An individual member
Member.create(email: 'member@green.org', password: 'password')

# A vendor
Member.create(email: 'vendor@green.org', password: 'password')

# Top-level categories
Category.create(title: 'Category 1', name: 'cat01', enabled: true)
Category.create(title: 'Category 2', name: 'cat02', enabled: true)
Category.create(title: 'Category 3', name: 'cat03', enabled: true)
