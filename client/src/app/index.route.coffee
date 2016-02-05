angular.module 'fakeLunchHub'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/',
        templateUrl: 'app/main/main.html',
        controller: 'MainCtrl'
      .state 'groups',
        url: '/groups',
        templateUrl: 'app/views/groups.html',
        controller: 'GroupsCtrl'

    $urlRouterProvider.otherwise '/'

  .factory 'Group', (RailsResource) ->
    class Group extends RailsResource
      @configure url: '/api/groups', name: 'group'
