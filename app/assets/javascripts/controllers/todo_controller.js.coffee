TodoMVC.TodoController = Ember.ObjectController.extend

  isCompleted: ( (key, value)->
    model = @get('model')
    if value is `undefined`
      # property being used as a getter
      model.get 'isCompleted'
    else
      # property being used as a setter
      model.set 'isCompleted', value
      model.save()
      value
  ).property 'model.isCompleted'
  isEditing: false

  actions:
    editTodo: ->
      @set 'isEditing', true

    acceptChanges: ->
      @set 'isEditing', false

      if Ember.isEmpty(@get('model.title'))
        @send 'removeTodo'
      else
        @get('model').save()
