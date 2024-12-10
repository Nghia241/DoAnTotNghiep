class CreateSystemRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :system_roles do |t|
      t.string :role_name, null: false
      t.text :description
      t.timestamps
    end
  end
end
