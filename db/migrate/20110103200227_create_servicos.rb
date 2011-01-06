class CreateServicos < ActiveRecord::Migration
  def self.up
    create_table :servicos do |t|
      t.string :nivel
      t.string :descricao
      t.float :valormensal
      t.float :valoranual

      t.timestamps
    end
  end

  def self.down
    drop_table :servicos
  end
end
