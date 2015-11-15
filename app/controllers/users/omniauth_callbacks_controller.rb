class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    puts auth_hash
    puts auth_hash.inspect

    @user  = User.find_by(email: auth_hash.info.email)
    @oauth = OauthAccount.find_or_initialize_from_omniauth(auth_hash)

    if @user
      sign_in_and_redirect(@user, event: :authentication)
    elsif @oauth.save
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      sign_in_and_redirect(@oauth.user, event: :authentication)
    else
      set_flash_message(:alert, :failure, kind: 'Facebook', reason: 'something went wrong') if is_navigational_format?
      redirect_to root_url
    end
  end

  private
    def auth_hash
      request.env['omniauth.auth']
    end
end
