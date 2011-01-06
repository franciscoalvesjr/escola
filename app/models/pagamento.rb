class Pagamento < ActiveRecord::Base

  validates :forma,            :presence => true,
                               :length   => { :maximum => 30 }

  has_many :instituicoes

end
