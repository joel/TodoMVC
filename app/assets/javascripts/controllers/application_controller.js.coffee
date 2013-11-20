TodoMVC.ApplicationController = Ember.ArrayController.extend

  remaining: (->
    @filterBy('isCompleted', false).get 'length'
  ).property 'model.@each', 'isCompleted'

  inflection: (->
    remaining = @get('remaining')
    (if remaining is 1 then 'item' else 'items')
  ).property 'remaining'

