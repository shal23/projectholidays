class Enquiry < ActiveRecord::Base
  attr_accessible :email, :join_mailing_list, :message, :name, :subject

  validates :name, :presence => true
  validates :email, :presence => true
  validates :subject, :presence => true
end
