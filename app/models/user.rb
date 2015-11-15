class User < ActiveRecord::Base
  has_one  :oauth_account  , dependent: :destroy
  has_and_belongs_to_many :events, join_table: :events_users, uniq: true

  # Custom
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  bitmask :roles, as: [:admin] # Do not change the order, always append new roles at the end!

  # Methods
  def password_required?
    if new_record? && oauth_account
      false
    else
      super
    end
  end

  def name
    "#{first_name} #{last_name}"
  end
end
