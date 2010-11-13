class CreateRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :restaurantes do |t|

      t.string :name , :limit => 80
      t.string :endereco , :limit => 80

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurantes
  end
end
