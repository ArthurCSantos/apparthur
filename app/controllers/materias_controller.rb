class MateriasController < ApplicationController

  def index
  end

  def create
  	nova_materia = Materia.new
  	nova_materia.nome = params['nome']
  	nova_materia.creditos = params['creditos']
  	nova_materia.numero_de_provas = params['numero_de_provas']
  	nova_materia.numero_de_trabalhos = params['numero_de_trabalhos']
  	nova_materia.save!

  	redirect_to :back

  end

  def show 
  	@materia = Materia.all.find params['id']
  end



  def remover_por_nome
  	@nome_para_remover = params['nome']
  	@materia = Materia.where(:nome=>@nome_para_remover)
  	@materia.destroy
  	redirect_to :back
  	flash[:notice] = "#{@nome_para_remover} foi removido"
  end



 end