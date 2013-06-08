class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    if resource.travel_agent == true
    	new_travel_agent_profile_path
    else
    	root_path
    end
  end
end