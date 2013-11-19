TodoMVC.TodosIndexRoute = Ember.Route.extend

  model: ->
    @store.findAll 'todo'
