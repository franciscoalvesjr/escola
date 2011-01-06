class Configuracao < ActiveRecord::Base
  
  validates :descricao,         :presence => true,
                                :length   => { :maximum => 20 }

  has_many :instituicoes
  
end
