class CreateZapateria < ActiveRecord::Migration
  def change
    create_table :zapateria do |t|
      t.string :imagen
      t.string :imagen1
      t.string :imagen2
      t.string :nombre

      t.timestamps null: false
    end
  end
end
