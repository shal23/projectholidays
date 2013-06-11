class Event < ActiveRecord::Base
  has_event_calendar

  attr_accessible :name, :start_at, :end_at, :description, :address

  default_scope order: 'events.start_at DESC'

  acts_as_gmappable

	def gmaps4rails_address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
			"#{self.address}" 
	end
end
