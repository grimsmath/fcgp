# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Settings.destroy_all()
Settings["System.name"]         = "First Coast Green Pages"
Settings["Google.ApiKey"]       = 'AIzaSyBBeWJOpwAsjKC-C2D90JURMRNXn0Sa6rE'
Settings["Mapping.DefaultLat"]  = 30.3369     # Jacksonville, FL
Settings["Mapping.DefaultLong"] = -81.6614    # Jacksonville, FL

## Members
Member.destroy_all()

# A Super Administrator
root = Member.create(email: 'grimsmath@gmail.com', password: 'password')
root.toggle!(:super_admin)

# An administrator
admin = Member.create(email: 'admin@usgbcnf.org', password: 'password')
admin.toggle!(:admin)

# Top-level categories
Category.destroy_all()
Category.create(title: 'Food (Restaurants, Farms, Markets)',
                name: 'food',
                enabled: true)

Category.create(title: 'Travel (Transportation, Lodging, Recreation)',
                name: 'travel',
                enabled: true)

Category.create(title: 'Building/Remodeling',
                name: 'building',
                enabled: true)

Category.create(title: 'Clothing & Accessories',
                name: 'clothing',
                enabled: true)

Category.create(title: 'Household, Yard & Garden (Products)',
                name: 'household',
                enabled: true)

Category.create(title: 'Health & Wellness',
                name: 'health_wellness',
                enabled: true)

Category.create(title: 'Services (Residential & Commercial)',
                name: 'services',
                enabled: true)

Category.create(title: 'Community, Education, & Advocacy',
                name: 'community',
                enabled: true)

## Pages
# Listings,
# News and Events,
# Suggest a Listing,
# Advertise,
# Green Your Business
# Contact Us,

Page.destroy_all()
Page.create(title: 'News & Events',
            name: 'news_and_events',
            order: 1.0,
            member_id: 1)

Page.create(title: 'Suggest a Listing',
            name: 'suggest_a_listing',
            order: 2.0,
            member_id: 1)

Page.create(title: 'Advertise',
            name: 'advertise',
            order: 3.0,
            member_id: 1)

Page.create(title: 'Green Your Business',
            name: 'green_your_business',
            order: 4.0,
            member_id: 1)
