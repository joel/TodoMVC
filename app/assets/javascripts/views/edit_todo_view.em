class TodoMVC.EditTodoView extends Ember.TextField
  didInsertElement: ->
    @$().focus()

Ember.Handlebars.helper 'edit-todo', TodoMVC.EditTodoView