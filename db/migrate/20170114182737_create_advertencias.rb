class CreateAdvertencias < ActiveRecord::Migration[5.0]
  def change
    create_table :advertencias do |t|
    t.datetime :advdata
    t.string :reason


      t.timestamps
    end
  end
end
