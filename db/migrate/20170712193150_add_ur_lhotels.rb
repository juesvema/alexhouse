class AddUrLhotels < ActiveRecord::Migration
  def change
    add_column :hoteles, :url, :string
  end
end
