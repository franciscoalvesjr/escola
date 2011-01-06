class Pais < ActiveRecord::Base
  
  validates :nome,              :presence => true,
                                :length   => { :maximum => 20 }

  has_many :instituicoes
  
end
