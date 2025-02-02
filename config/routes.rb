Rails.application.routes.draw do
  get  "posts/index"
  get  "newapp/home"
  get  "newapp/contact", to: "newapp#contact"
  post "newapp/contact", to: "newapp#contact", as: :contact
  get  "newapp/who"
  root "newapp#home"
  resources :posts
end
