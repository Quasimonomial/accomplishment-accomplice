class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :email
      t.string   :session_token
      t.string   :password_digest
      t.string   :name
      t.integer  :session_count

      t.timestamps null: false
    end

    add_index :users, :email
  end
end
