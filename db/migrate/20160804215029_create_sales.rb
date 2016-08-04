class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :num_factura
      t.date :fecha
      t.integer :cantidad
      t.integer :venta_total

      t.timestamps null: false
    end
  end
end
