class CreateRedes < ActiveRecord::Migration
  def self.up
    create_table :redes do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :redes
  end
end
