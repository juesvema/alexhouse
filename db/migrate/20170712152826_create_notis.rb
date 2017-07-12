class CreateNotis < ActiveRecord::Migration
  def change
    create_table :notis do |t|
      t.string :imagen
      t.string :titulo
      t.string :contenido
      t.string :categoria

      t.timestamps null: false
    end
  end
end
