class ProvasController < ApplicationController

  def index
    @materia = Materia.find params['materia_id']
  end

  def create
    @materia = Materia.find params['materia_id']
    nova_prova = Prova.new
    nova_prova.materia_id = @materia.id
    nova_prova.peso = params['peso']
    nova_prova.nota = params['nota']
    nova_prova.data = params['data']
    nova_prova.save!

    redirect_to :back
  end

    

 end