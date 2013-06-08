class Post < ActiveRecord::Base

 	belongs_to :user
  	attr_accessible :content, :name, :title

  	validates :name, :presence => true
  	validates :title, :presence => true

  	has_many :comments, :dependent => :destroy

  	default_scope order: 'posts.created_at DESC'
end
