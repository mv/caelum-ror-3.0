class AddEspecialidadeToRestaurantes < ActiveRecord::Migration
  def self.up
      t.string :especialidade , :limit => 40
  end

  def self.down
      remove_column :especialidade
  end
end
