class Contact < ActiveRecord::Base
  validates_presence_of :name, :topic, :email, :body

end
