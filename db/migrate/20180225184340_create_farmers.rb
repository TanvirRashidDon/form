class CreateFarmers < ActiveRecord::Migration[5.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :farm
      t.string :produce
      t.integer :produce_price
      t.string :wepay_access_token
      t.integer :wepay_account_id

      t.timestamps
    end
  end
end
