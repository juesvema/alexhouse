class AddImageNews < ActiveRecord::Migration
  def up
  	add_attachment :notis, :imagen
  end

  def down
  	remove_attachment :notis, :imagen
  end
end
