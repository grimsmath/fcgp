class Page < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :title, presence: true

  after_save :reload_routes

  def reload_routes
    DynamicRouter.reload
  end
end
