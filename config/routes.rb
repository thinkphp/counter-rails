Rails.application.routes.draw do
  root 'counter#index'
  get 'increment', to: 'counter#increment'
  get 'decrement', to: 'counter#decrement'
  get 'reset', to: 'counter#reset'
end
