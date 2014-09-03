class Category < ActiveRecord::Base
  has_and_belongs_to_many :vendors, :join_table => 'category_vendors'

  has_ancestry

  def self.arrange_as_json(options = {}, hash = nil)
    hash ||= arrange(options)
    arr = []
    hash.each do |node, children|
      branch = {id: node.id, name: node.name, title: node.title, created_at: node.created_at, updated_at: node.updated_at}
      branch[:children] = arrange_as_json(options, children) unless children.empty?
      arr << branch
    end
    arr
  end
end
