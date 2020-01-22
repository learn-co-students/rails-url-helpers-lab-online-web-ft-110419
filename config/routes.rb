Rails.application.routes.draw do
	get '/students' => 'students#index'
	get '/students/:id' => 'students#show', as: "student"
	get 'students/:id/activate' => 'students#activate', as: "activate_student"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
