class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :venue
      t.string :url
      t.text :details

      t.timestamps null: false
    end
  end
end
