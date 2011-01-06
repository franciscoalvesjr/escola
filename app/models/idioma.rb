class Idioma < ActiveRecord::Base

  validates :nome,            :presence => true,
                              :length   => { :maximum => 15 }

  has_many :instituicoes


end
