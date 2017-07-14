class AddImageHoteles < ActiveRecord::Migration
  def up
  	add_attachment :hoteles, :imagen
  	add_attachment :hoteles, :imagen1
  	add_attachment :hoteles, :imagen2
  	add_attachment :hoteles, :imagen3
  end

  def down
  	remove_attachment :hoteles, :imagen
  	remove_attachment :hoteles, :imagen1
  	remove_attachment :hoteles, :imagen2
  	remove_attachment :hoteles, :imagen3
  end
end
