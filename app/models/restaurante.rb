#encoding: utf-8

class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade, :foto

  validates_presence_of :nome, message: "deve ser preenchido"
  validates_presence_of :endereco, message: "deve ser preenchido"
  validates_presence_of :especialidade, message: "deve ser preenchido"
  validates_uniqueness_of :nome, message: "nome já cadastrado"
  validates_uniqueness_of :endereco, message: "endereço já cadastrado"

  has_many :qualificacoes
  has_many :comentarios, :as => :comentavel
  has_and_belongs_to_many :pratos

private
    def primeira_letra_deve_ser_maiuscula
      errors.add(:nome,
         "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
    end
    
    def self.search(search, page)
      paginate :per_page => 5, :page => page,
               :conditions => ['nome like ?', "%#{search}%"],
               :order => 'nome'
    end
    

end
