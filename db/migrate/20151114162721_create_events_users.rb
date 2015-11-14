class CreateEventsUsers < ActiveRecord::Migration
  def change
    create_table :events_users, id: false do |t|
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
