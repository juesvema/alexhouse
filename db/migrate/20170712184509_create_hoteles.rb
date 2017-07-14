class CreateHoteles < ActiveRecord::Migration
  def change
    create_table :hoteles do |t|
      t.string :nombre
      t.string :imagen
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :ubicacion
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
