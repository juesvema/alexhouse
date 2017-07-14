class Hotele < ActiveRecord::Base
    has_attached_file :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
  has_attached_file :imagen1
  validates_attachment_content_type :imagen1, content_type: /\Aimage\/.*\z/
  has_attached_file :imagen2
  validates_attachment_content_type :imagen2, content_type: /\Aimage\/.*\z/
  has_attached_file :imagen3
  validates_attachment_content_type :imagen3, content_type: /\Aimage\/.*\z/
end
