class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    journals_path # your path
  end
  
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end
