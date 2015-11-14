class CreateOauthAccounts < ActiveRecord::Migration
  def change
    create_table :oauth_accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :image_url
      t.string :oauth_token
      t.string :oauth_secret
      t.string :oauth_expires_at

      t.timestamps null: false
    end
  end
end
