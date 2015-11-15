class MakeEventsUsersUnique < ActiveRecord::Migration
  def change
    add_index :events_users, [:event_id, :user_id], unique: true
  end
end
