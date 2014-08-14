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
admin = Member.create(email: 'admin@usgbcnf.org', password: 'password')
admin.toggle!(:admin)

# Top-level categories
Category.create(title: 'Food (Restaurants, Farms, Markets)', name: 'food', enabled: true)
Category.create(title: 'Travel (Transportation, Lodging, Recreation)', name: 'travel', enabled: true)
Category.create(title: 'Building/Remodeling', name: 'building', enabled: true)
Category.create(title: 'Clothing & Accessories', name: 'clothing', enabled: true)
Category.create(title: 'Household, Yard & Garden (Products)', name: 'household', enabled: true)
Category.create(title: 'Health & Wellness', name: 'health_wellness', enabled: true)
Category.create(title: 'Services (Residential & Commercial)', name: 'services', enabled: true)
Category.create(title: 'Community, Education, & Advocacy', name: 'community', enabled: true)
