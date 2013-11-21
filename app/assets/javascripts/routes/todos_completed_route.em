class TodoMVC.TodosCompletedRoute extends Ember.Route
  model: ->
    @store.filter 'todo', (todo) ->
      todo.get 'isCompleted'

  renderTemplate: (controller)->
    @render 'todos/index', controller: controller