class Attraction < ActiveRecord::Base
  attr_accessible :country, :name, :state

  acts_as_gmappable

	def gmaps4rails_address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  		"#{self.name}, #{self.state}, #{self.country}" 
	end
end
