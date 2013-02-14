R20130214Cookbooks::Application.routes.draw do
  resources :books, :recipes, :ingredients
end
