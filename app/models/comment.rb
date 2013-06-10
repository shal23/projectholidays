class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :content, :name

   validates :name, :presence => true
  validates :content, :presence => true
end
