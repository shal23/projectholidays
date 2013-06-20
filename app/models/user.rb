class User < ActiveRecord::Base
  rolify

  mount_uploader :avatar, AvatarUploader
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

 
  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :role_ids, :as => :agent
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :agent

  has_many :posts
  
end
  def add_role_to_user
    if self.agent == true
      self.add_role :agent
    end
end