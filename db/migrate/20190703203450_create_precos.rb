class CreatePrecos < ActiveRecord::Migration[5.2]
  def change
    create_table :precos do |t|
      t.float :valor

      t.timestamps
    end
  end
end
