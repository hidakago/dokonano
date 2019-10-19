Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :disappearances
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
