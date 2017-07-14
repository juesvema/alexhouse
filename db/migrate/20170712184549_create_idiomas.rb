class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :modalidad
      t.string :idioma
      t.string :imagen

      t.timestamps null: false
    end
  end
end
