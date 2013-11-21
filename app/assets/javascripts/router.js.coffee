# For more information see: http://emberjs.com/guides/routing/

TodoMVC.Router.map ->
  @resource 'todos', { path: '/' }, ->
    @route 'active'
    @route 'completed'