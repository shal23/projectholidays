class AgentProfile < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  attr_accessible :company_address, :company_name, :company_url, :avatar, :remote_avatar_url, :name, :about

  belongs_to :agent
  validates :name, :presence => true
  validates :company_name, :presence => true
  validates :company_url, :presence => true
end
