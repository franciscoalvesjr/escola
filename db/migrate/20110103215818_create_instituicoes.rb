class CreateInstituicoes < ActiveRecord::Migration
  def self.up
    create_table :instituicoes do |t|
      t.string :nome
      t.string :logradouro
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :estado_id
      t.string :pais_id
      t.string :slogan
      t.string :configuracao_id         #antes configuracao
      t.string :modalidade_id           #antes modalidade
      t.string :rede_id                 #antes rede
      t.string :esfera_id               #antes esfera
      t.string :servico_id              #antes nivelservico
      t.string :pagamento_id              #antes era forma pagamento
      t.string :idioma_id                       #cuidado com o i de idioma
      t.string :nomediretor
      t.string :emaildiretor
      t.string :senha

      t.timestamps
    end
    
    add_index(:instituicoes, :idioma_id)       #cuidado com o i de idioma
    add_index(:instituicoes, :pagamento_id)
    add_index(:instituicoes, :servico_id)
    add_index(:instituicoes, :esfera_id)
    add_index(:instituicoes, :rede_id)
    add_index(:instituicoes, :modalidade_id)
    add_index(:instituicoes, :configuracao_id)
    add_index(:instituicoes, :pais_id)
    add_index(:instituicoes, :estado_id)
    
  end

  def self.down
    drop_table :instituicoes
  end
end
