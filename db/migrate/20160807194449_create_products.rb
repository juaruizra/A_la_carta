class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :sale, index: true, foreign_key: true
      t.string :nombre
      t.text :descripcion
      t.string :tipo_producto
      t.integer :valor_unitario

      t.timestamps null: false
    end
  end
end
