class CreatePagamentos < ActiveRecord::Migration
  def self.up
    create_table :pagamentos do |t|
      t.string :forma

      t.timestamps
    end
  end

  def self.down
    drop_table :pagamentos
  end
end
