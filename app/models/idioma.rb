class Idioma < ActiveRecord::Base
    has_attached_file :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
  def self.search(search)
  if search
    where(["nombre LIKE ?","search"])
  else
    all
  end
  end
end
