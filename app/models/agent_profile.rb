class AgentProfile < ActiveRecord::Base
  attr_accessible :company_address, :company_name, :company_url, :image, :name
end
