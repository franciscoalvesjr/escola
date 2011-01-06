class Servico < ActiveRecord::Base

  validates :nivel,           :presence => true,
                              :length   => { :maximum => 20 }
  
  validates :descricao,       :presence => true
  
  has_many :instituicoes

end
