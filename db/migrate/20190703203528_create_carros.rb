class CreateCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :carros do |t|
      t.string :placa
      t.references :classe, foreign_key: true
      t.references :marca, foreign_key: true
      t.references :cor, foreign_key: true
      t.references :preco, foreign_key: true

      t.timestamps
    end
  end
end
