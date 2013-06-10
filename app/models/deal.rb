class Deal < ActiveRecord::Base
  attr_accessible :description, :title, :url

  validates :title, :presence => true
  validates :url, :presence => true
  validates :description, :presence => true

  default_scope order: 'deals.created_at DESC'
end
