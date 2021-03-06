Proposals.VotingRoundRoute = Ember.Route.extend
  model: (params) ->
    Ember.RSVP.hash(
      round: @store.find('round', params.round)
      proposals: @store.find('proposal', round: params.round)
    )

  setupController: (controller, model) ->
    controller.set('round', model.round)
    controller.set('proposals', model.proposals)
