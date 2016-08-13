class Sale < ActiveRecord::Base
  belongs_to :user
  has_many :sale_products
  has_many :products, through: :sale_products

  after_create :save_products

  # Custom Setter:Metodo que me permite asignar un valor al atributo de un objeto, en este caso el arreglo products
  def products=(value)
    @products = value
  end

  def save_products
    @products.each do |product_id|
      SaleProduct.create(product_id:product_id, sale_id: self.id)
    end
  end
end
