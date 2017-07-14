class AddImageZapateria < ActiveRecord::Migration
  def up
  	add_attachment :zapateria, :imagen
  	add_attachment :zapateria, :imagen1
  	add_attachment :zapateria, :imagen2
  end

  def down
  	remove_attachment :zapateria, :imagen
  	remove_attachment :zapateria, :imagen1
  	remove_attachment :zapateria, :imagen2
  end
end
