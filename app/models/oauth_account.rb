class OauthAccount < ActiveRecord::Base
  # Extends & Includes

  # Associations (belongs_to, has_one, has_many, has_and_belongs_to_many, accepts_nested_attributes_for)
  belongs_to :user, autosave: true

  # Delegates

  # Validations

  # Scopes

  # Callbacks (before_create, before_save...)

  # Custom (as_activity, attache, bitmask, enum, friendly_id, monetize, pagination, ...)

  # Methods

  def self.find_or_initialize_from_omniauth(auth)
    logger.info JSON.pretty_generate(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |account|
      account.image_url        = auth.info.image
      account.oauth_token      = auth.credentials.token
      account.oauth_secret     = auth.credentials.secret
      account.oauth_expires_at = Time.at(auth.credentials.expires_at) if auth.credentials.expires_at

      (account.user || account.build_user).tap do |user|
        if user.new_record?
          if auth.info.first_name && auth.info.last_name
            user.first_name   = auth.info.first_name
            user.last_name    = auth.info.last_name
          else
            user.first_name, user.last_name = auth.info.name.split(' ', 2)
          end
          user.email        = auth.info.email
          puts 'New user:'
          puts user.inspect
        end
      end
      puts account.inspect
      puts account.valid?
      puts account.errors.full_messages
      puts '==========================================='
      puts account.user.inspect
      puts account.user.valid?
      puts account.user.errors.full_messages
      puts '==========================================='
    end
  rescue StandardError
    logger.error auth.inspect
    raise
  end
end
