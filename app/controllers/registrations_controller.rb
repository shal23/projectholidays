class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    if resource.agent == true
    	new_agent_profile_path
    else
    	root_path
    end
  end
end