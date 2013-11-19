TodoMVC::Application.routes.draw do
  root controller: 'ember', action: '/'
  get 'ember/index'
end
