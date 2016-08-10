class Sale < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :products

  after_create :save_products

  # Custom Setter:Metodo que me permite asignar un valor al atrinbuto de un objeto, en estecaso el arrglo products
  def products=(value)
    @products = value
  end

  # def save_products
  #   @products.each do [product_id]
  #
  # end
end
