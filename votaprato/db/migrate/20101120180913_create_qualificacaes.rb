class CreateQualificacaes < ActiveRecord::Migration
  def self.up
    create_table :qualificacaes do |t|
      t.integer :cliente_id
      t.integer :restaurante_id
      t.float :nota
      t.float :valor_gasto

      t.timestamps
    end
  end

  def self.down
    drop_table :qualificacaes
  end
end
