$(document).ready () ->

  api = new GuildWars2API

  # All API calls return a promise.

  # All calls still asynchronous, allowing you to have multiple calls going on at once,
  # but you can use .then() to yield where necessary

  # Use .then() to get resolved data from a promise
  api.GetMaps()
    .then (data) ->
      log('GetMaps succeed', data)

  # If you need data from multiple promises, use Promise.all(<array>)
  Promise.all([api.GetEventNames(), api.GetEventDetails()])
    .then (data) ->
      # data[0] = GetEventNames() results
      # data[1] = GetEventDetails() results
      log('Promise.all succeed', data)

  # Add a 2nd function to .then() to handle errors
  api.GetExchangeGems(-1)
    .then (data) ->
      # if we somehow succeed, hooray!
      log("GetExchangeGems succeed - this shouldn't happen")
    ,(error) ->
      # error handle
      log('GetExchangeGems error', error)

  # You can sequantially execute promises by chaining
  api.GetItems()
    .then (data) ->
      log('1st in chain succeed')
      api.GetItemDetails(data.items[0])
    .then (data) ->
      log('2nd in chain succeed', data)

# util functions ###

log = ->
  console.log msg for msg in arguments
  console.log '---'
