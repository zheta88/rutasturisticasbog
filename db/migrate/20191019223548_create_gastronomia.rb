class CreateGastronomia < ActiveRecord::Migration[6.0]
  def change
    create_table :gastronomia do |t|
      t.string :plato
      t.text :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
