json.extract! sale, :id, :user_id, :num_factura, :fecha, :cantidad, :venta_total, :created_at, :updated_at
json.url sale_url(sale, format: :json)