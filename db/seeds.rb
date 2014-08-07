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

# Top-level categories
cat1 = Category.create(title: 'Economy', name: 'economy', enabled: true)
cat2 = Category.create(title: 'Food', name: 'food', enabled: true)
cat2_1 = Category.create(title: 'Community Gardens', name: 'community_gardens', enabled: true, parent: cat2)

cat3 = Category.create(title: 'Technology', name: 'technology', enabled: true)
cat4 = Category.create(title: 'Mobility', name: 'mobility', enabled: true)
cat5 = Category.create(title: 'Flora & Fauna', name: 'flora_fauna', enabled: true)
cat6 = Category.create(title: 'Food', name: 'food', enabled: true)
cat7 = Category.create(title: 'Outdoor Activities', name: 'outdoor_activities', enabled: true)
cat8 = Category.create(title: 'Justice & Activism', name: 'justice_activism', enabled: true)
cat9 = Category.create(title: 'Culture', name: 'culture', enabled: true)
cat10 = Category.create(title: 'Eco Information', name: 'eco_information', enabled: true)
cat11 = Category.create(title: 'Public Works', name: 'public_works', enabled: true)
cat12 = Category.create(title: 'Landmarks', name: 'landmarks', enabled: true)

# Default tags
tag1 = Tag.create(title: 'Information', name: 'information', enabled: true)
tag2 = Tag.create(title: 'Event', name: 'event', enabled: true)
tag3 = Tag.create(title: 'Initiative', name: 'initiative', enabled: true)
tag4 = Tag.create(title: 'Service', name: 'service', enabled: true)
tag5 = Tag.create(title: 'Politics', name: 'politics', enabled: true)
tag6 = Tag.create(title: 'Cleanup', name: 'cleanup', enabled: true)
tag7 = Tag.create(title: 'Rivers', name: 'rivers', enabled: true)
tag8 = Tag.create(title: 'Ocean', name: 'ocean', enabled: true)
tag9 = Tag.create(title: 'Conservation', name: 'conservation', enabled: true)
