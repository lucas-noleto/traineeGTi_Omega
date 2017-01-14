class AddAniversarioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :aniversario, :date
  end
end
