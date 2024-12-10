class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.bigint :system_role_id, null: false
      t.bigint :language_id
      t.string :qr_code
      t.timestamps
    end
    add_foreign_key :users, :system_roles
    add_foreign_key :users, :languages
    add_index :users, :email, unique: true
  end
end
