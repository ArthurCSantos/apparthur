class Materia
	include Mongoid::Document

  #fields
  field :nome,                   :type=>String,  :default=>nil
  field :creditos,     			 :type=>Integer, :default=>nil
  field :numero_de_provas,       :type=>Integer, :default=>'3'
  field :numero_de_trabalhos,	 :type=>Integer, :default=>'0'
  
  has_many :provas
  has_many :trabalhos
  

end
