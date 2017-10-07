Rails.application.routes.draw do
  get 'slideshow/shots'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'slideshow#shots'
end
