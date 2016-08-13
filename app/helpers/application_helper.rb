module ApplicationHelper
  # Agregado para el modal
  def resource_name
    :user
  end
  def resource
    @resource ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def price_format(price)
    number_to_currency(price, unit: '$')
  end

end
