class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
