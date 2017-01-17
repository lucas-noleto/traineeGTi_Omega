class AddNivelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nivel, :integer
  end
end
