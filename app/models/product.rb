class Product < ActiveRecord::Base
  has_many :sale_products
  has_many :sales, through: :sale_products

  validates :nombre, presence: true, uniqueness: true
  validates :descripcion, :tipo_producto, :valor_unitario, :stock, presence: true

  has_attached_file :image, styles: {medium: "1280x720", thumb: "50×50", mini:"100x100"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
