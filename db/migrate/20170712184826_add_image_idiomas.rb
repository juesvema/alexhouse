class AddImageIdiomas < ActiveRecord::Migration
  def up
  	add_attachment :idiomas, :imagen
  end

  def down
  	remove_attachment :idiomas, :imagen
  end
end
