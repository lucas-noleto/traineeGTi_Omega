class AddMembroIdToAdvertencias < ActiveRecord::Migration[5.0]
  def change
    add_column :advertencias, :membro_id, :integer
  end
end
