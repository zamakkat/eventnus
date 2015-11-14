class Event < ActiveRecord::Base
  # Extends & Includes

  # Associations (belongs_to, has_one, has_many, has_and_belongs_to_many, accepts_nested_attributes_for)
  has_and_belongs_to_many :participants , class_name: 'User' , join_table: :events_users

  # Delegates

  # Validations

  # Scopes

  # Callbacks (before_create, before_save...)

  # Custom (as_activity, attache, bitmask, enum, friendly_id, monetize, pagination, ...)

  # Methods
end
