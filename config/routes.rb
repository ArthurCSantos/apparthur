Rails.application.routes.draw do

	get "/", to: "home#inicial"

	get "/cv", to: "cv#dados_pessoais"	
	get "/dados_pessoais", to: "cv#dados_pessoais"
	get "/educacao", to: "cv#educacao"
	get "/certificados", to: "cv#certificados"
	get "/idiomas", to: "cv#idiomas"
	get "/exp_prof", to: "cv#experienciaprof"
	get "/ativcompl", to: "cv#ativcompl"
	get "/informatica", to: "cv#informatica"

	get "/materias", to:"materias#materias"

	resources :materias do
		collection do
			delete :remover_por_nome
			get :adicionar_materia
			post :adicionar_materia
		end
		resources :provas do
			collection do
			
			end
		end

		resources :trabalhos do
			collection do
				
			end
		end

	end



	
end