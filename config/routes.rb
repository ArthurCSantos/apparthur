Rails.application.routes.draw do
 Rails.application.routes.draw do

get "/inicial", to: "home#inicial"
get "/educacao", to: "home#educacao"
get "/certificados", to: "home#certificados"
get "/idiomas", to: "home#idiomas"
get "/exp_prof", to: "home#experienciaprof"
get "/ativcompl", to: "home#ativcompl"
get "/informatica", to: "home#informatica"

end

end
