class Estado < ActiveRecord::Base
  
  validates :nome,              :presence => true,
                                :length   => { :maximum => 30 }

  has_many :instituicoes
  
end
