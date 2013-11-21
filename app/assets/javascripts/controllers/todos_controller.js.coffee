TodoMVC.TodosController = Ember.ArrayController.extend

  remaining: (->
    @filterBy('isCompleted', false).get 'length'
  ).property 'model.@each', 'isCompleted'

  inflection: (->
    remaining = @get('remaining')
    (if remaining is 1 then 'item' else 'items')
  ).property 'remaining'

  hasCompleted: (->
    @get('completed') > 0
  ).property 'completed'

  completed: (->
    @filterBy('isCompleted', true).get 'length'
  ).property 'model.@each', 'isCompleted'


  actions:

    createTodo: ->

      # Get the todo title set by the 'New Todo' text field
      title = @get('newTitle')
      return unless title.trim()

      # Create the new Todo model
      todo = @store.createRecord('todo',
        title: title
        isCompleted: false
      )

      # Clear the 'New Todo' text field
      @set 'newTitle', ''

      # Save the new model
      todo.save()

    clearCompleted: ->
      completed = @filterBy('isCompleted', true)
      completed.invoke 'deleteRecord'
      completed.invoke 'save'
