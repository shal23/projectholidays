class Enquiry < ActiveRecord::Base
  attr_accessible :email, :join_mailing_list, :message, :name, :subject
end
