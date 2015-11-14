class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles, :integer, default: 0
  end
end
