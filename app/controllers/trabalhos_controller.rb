class TrabalhosController < ApplicationController

  def index
    @materia = Materia.find params['materia_id']
  end

  def create
    @materia = Materia.find params['materia_id']
    novo_trabalho = Trabalho.new
    novo_trabalho.materia_id = @materia_id
    novo_trabalho.nome = params['nome']
    novo_trabalho.peso = params['peso']
    novo_trabalho.nota = params['nota']
    novo_trabalho.data = params['data']
    novo_trabalho.save!

    redirect_to :back
  end

  

    

 end