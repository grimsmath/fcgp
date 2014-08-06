class Page < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :title, presence: true

  after_save :reload_routes

  has_ancestry

  def reload_routes
    DynamicRouter.reload
  end

  def indented_title
    '--' * ancestors.count + ' ' + title
  end
end
