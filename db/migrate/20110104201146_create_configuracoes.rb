class CreateConfiguracoes < ActiveRecord::Migration
  def self.up
    create_table :configuracoes do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :configuracoes
  end
end
