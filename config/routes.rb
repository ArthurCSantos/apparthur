Rails.application.routes.draw do
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

end

end
