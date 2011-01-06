class Instituicao < ActiveRecord::Base
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :nome,            :presence => true,
                              :length   => { :maximum => 50 },
                              :uniqueness => { :case_sensitive => false }
  validates :logradouro,      :presence => true,
                              :length   => { :maximum => 50 }
  validates :numero,          :presence => true,
                              :length   => { :maximum => 8}
  validates :complemento,     :length   => { :maximum => 20 }
   
  validates :bairro,          :presence => true,
                              :length   => { :maximum => 30 }
  validates :cep,             :presence => true,
                              :length   => { :maximum => 9 }
  validates :cidade,          :presence => true,
                              :length   => { :maximum => 30 }
  validates :estado_id,       :presence => true,
                              :length   => { :maximum => 30 }
  validates :pais_id,         :presence => true,
                              :length   => { :maximum => 20 }
  validates :configuracao_id, :presence => true,
                              :length   => { :maximum => 20 }
  validates :modalidade_id,   :presence => true,
                              :length   => { :maximum => 15 }
  validates :rede_id,         :presence => true,
                              :length   => { :maximum => 15 }
  validates :esfera_id,       :presence => true,
                              :length   => { :maximum => 20 }
  validates :servico_id,      :presence => true,
                              :length   => { :maximum => 20 }
  validates :pagamento_id,    :length   => { :maximum => 30 }
 
  validates :idioma_id,       :presence => true,               #cuidado com a grafia de idioma!!!!!!!!!!
                              :length   => { :maximum => 15 }
  validates :nomediretor,     :presence => true,
                              :length   => { :maximum => 50 }
  validates :senha,           :presence => true,
                              :length   => { :maximum => 50 }

  validates :emaildiretor,    :presence   => true,
                              :format     => { :with => email_regex },
                              :uniqueness => { :case_sensitive => false }


  belongs_to :idioma
  belongs_to :pagamento
  belongs_to :servico
  belongs_to :esfera
  belongs_to :rede
  belongs_to :modalidade
  belongs_to :configuracao
  belongs_to :estado
  belongs_to :pais

end
