class CreateEsferas < ActiveRecord::Migration
  def self.up
    create_table :esferas do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :esferas
  end
end
