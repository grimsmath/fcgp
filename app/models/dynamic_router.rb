# http://codeconnoisseur.org/ramblings/creating-dynamic-routes-at-runtime-in-rails-4
class DynamicRouter < ActiveRecord::Base
  def self.load
    FCGP::Application.routes.draw do
      if Page.exists?
        Page.all.each do |pg|
          # puts "Routing #{pg.name}"
          get "/#{pg.name}", :to => "pages#show", defaults: { id: pg.id }
        end
      end
    end
  end

  def self.reload
    FCGP::Application.routes_reloader.reload!
  end
end
