class User < ActiveRecord::Base
  has_one :oauth_account  , dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  # Methods
  def password_required?
    if new_record? && oauth_account
      false
    else
      super
    end
  end
end
