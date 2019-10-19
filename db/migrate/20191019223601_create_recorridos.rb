class CreateRecorridos < ActiveRecord::Migration[6.0]
  def change
    create_table :recorridos do |t|
      t.string :sitios
      t.text :descripcion

      t.timestamps
    end
  end
end
