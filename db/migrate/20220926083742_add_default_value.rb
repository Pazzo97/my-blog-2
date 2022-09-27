class AddDefaultValue < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :posts_count
    add_column :users, :posts_count, :integer, default: 0
  end
end
