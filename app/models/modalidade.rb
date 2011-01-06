class Modalidade < ActiveRecord::Base
  
  validates :descricao,         :presence => true,
                                :length   => { :maximum => 15 }

  has_many :instituicoes
  
end
