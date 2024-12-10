class AddLanguageIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :language_id, :bigint unless column_exists?(:users, :language_id)
    add_foreign_key :users, :languages unless foreign_key_exists?(:users, :languages)
  end
end