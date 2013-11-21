#= require jquery
#=
#= require handlebars.runtime
#= require handlebars
#= require ember
#= require ember-data
#=
#= require_self
#= require todo_mvc

# for more details see: http://emberjs.com/guides/application/
window.TodoMVC = Ember.Application.create(
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
)

Ember.RSVP.configure 'onerror', (error) ->
  Ember.Logger.assert false, error


