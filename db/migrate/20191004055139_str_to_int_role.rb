class StrToIntRole < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role, :string
    add_column :users, :role, :integer
  end
end
