class Artists::RegistrationsController < Devise::RegistrationsController
  def after_sign_in_path_for(resource_or_scope)
    artist_path
  end
end
