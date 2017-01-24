class CreateMembros < ActiveRecord::Migration
  def change
    create_table :membros do |t|
 	t.string :name 
 	t.string :email
 	t.string :course
 	t.string :role
 	t.date :JoinTime
 	t.string :Rg
 	t.string :CPF

 	t.timestamps 
    end
  end
end
