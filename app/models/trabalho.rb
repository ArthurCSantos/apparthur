class Trabalho
	include Mongoid::Document

  #fields
  field :nome, 					 :type=>String,  :default=>nil
  field :data,                   :type=>String,  :default=>nil
  field :nota,     				 :type=>Float,   :default=>nil
  field :peso,       			 :type=>Integer, :default=>'0'

  belongs_to :materia
  	
  

  

end