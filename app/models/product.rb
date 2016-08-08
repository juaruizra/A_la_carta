class Product < ActiveRecord::Base
  belongs_to :sale

  validates :nombre, presence: true, uniqueness: true
  validates :descripcion, :tipo_producto, :valor_unitario, presence: true

  has_attached_file :image, styles: {medium: "1280x720", thumb: "480×270"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
