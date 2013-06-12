class AgentProfile < ActiveRecord::Base
  attr_accessible :company_address, :company_name, :company_url, :image, :name, :about

  validates :name, :presence => true
  validates :company_name, :presence => true
  validates :company_url, :presence => true
end
