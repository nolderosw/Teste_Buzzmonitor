@app = angular.module 'App', [] ## Definição do nome do Modulo Principal ##

## Definição do Controller 'TodoCtrl' ##
@app.controller 'TodoCtrl', ['$scope', ($scope) ->

## Definição das duas variáveis do escopo que são responsáveis por guardar dados de tarefas ##
  $scope.tarefas_pendentes = [
    {descricao:"tarefa1"}
    {descricao:"tarefa2"}
    {descricao:"tarefa3"}
  ]
  $scope.tarefas_conclusas = [
    {descricao:"tarefa4"}
    {descricao:"tarefa5"}
    {descricao:"tarefa6"}
  ]

  ## Definição da função para adicionar uma tarefa pendente ##
  $scope.add_tarefa_pendente = ->
    $scope.tarefas_pendentes.push($scope.tarefa);
    $scope.tarefa = {};

  ## Definição da função para mudar o status de uma tarefa de pendente para conclusa ##
  $scope.add_tarefa_conclusa = (param) ->
    $scope.tarefas_conclusas.push($scope.tarefas_pendentes[param]);
    $scope.tarefas_pendentes.splice(param,1);

  ## Definição da função para mudar o status de uma tarefa de conclusa para pendente ##
  $scope.return_tarefa_pendente = (param) ->
    $scope.tarefas_pendentes.push($scope.tarefas_conclusas[param]);
    $scope.tarefas_conclusas.splice(param,1);

  ## Definição da função para deletar uma tarefa que esteja dentro de tarefas pendentes ##
  $scope.delete_tarefa_pendente = (param) ->
    $scope.tarefas_pendentes.splice(param,1);

  ## Definição da função para deletar uma tarefa que esteja dentro de tarefas conclusas ##
  $scope.delete_tarefa_conclusa = (param) ->
    $scope.tarefas_conclusas.splice(param,1)
]

