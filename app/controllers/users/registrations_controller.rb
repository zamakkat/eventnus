class Users::RegistrationsController < Devise::RegistrationsController
  def update_resource(resource, params)
    if needs_password?(resource, params)
      resource.update_with_password(params)
    else
      params.delete(:current_password)
      resource.update_without_password(params)
    end
  end

  private
    # Requires password if email changed,
    # or password/password confirmation were entered
    # or Facebook login
    def needs_password?(resource, params)
      (params[:email].present? && resource.email != params[:email]) ||
        params[:password].present? || params[:password_confirmation].present? ||
        current_user.try(:oauth_account).provider == 'facebook'
    end
end
