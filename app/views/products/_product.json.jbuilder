json.extract! product, :id, :sale_id, :nombre, :descripcion, :tipo_producto, :valor_unitario, :created_at, :updated_at
json.url product_url(product, format: :json)