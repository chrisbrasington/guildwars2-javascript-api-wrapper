class GuildWars2API

  # get JSON from url
  getJSON: (url) ->
    Promise.resolve(
      $.ajax({
        url:      url,
        type:     'GET',
        dataType: 'json'
      })
    )

  # guild wars 2 api, dynamic API URL building
  # verison 1 and 2
  apiCall: (apiCallFunction, parameters, version) ->
    url = 'https://api.guildwars2.com/'

    # assume version 1 unless specified
    if typeof version == 'undefined'
      url += 'v1/'
    else
      url += 'v2/'

    # function call
    url += apiCallFunction + '.json'

    # parameters
    if parameters?
      count = 0
      $.each(parameters, (key,value) ->
        if count == 0
          url += '?'
          count = count + 1
        else
          url += '&'
        url += key + '=' + value
      )

    @getJSON(url)

  # Get Events (depricated)
  # http://wiki.guildwars2.com/wiki/API:1/events

  # Get Event Names
  # http://wiki.guildwars2.com/wiki/API:1/event_names
  GetEventNames: ->
    @apiCall('event_names')

  # Get Map Names
  # http://wiki.guildwars2.com/wiki/API:1/map_names
  GetMapNames: ->
    @apiCall('map_names')

  # Get World Names (depircated)
  # http://wiki.guildwars2.com/wiki/API:1/world_names

  # Get Event(s) Details
  # http://wiki.guildwars2.com/wiki/API:1/event_details
  GetEventDetails: ->
    @apiCall('event_details')

  # Event Details Recalculation
  # http://wiki.guildwars2.com/wiki/API:1/event_details#Coordinate_recalculation
  # https://forum-en.guildwars2.com/forum/community/api/Event-Details-API-location-coordinates/first#post2262330

  # Get Guild Details
  # http://wiki.guildwars2.com/wiki/API:1/guild_details
  GetGuildDetails: (guild_id) ->
    @apiCall('guild_details',{'guild_id': guild_id})

  # Get Items
  # http://wiki.guildwars2.com/wiki/API:1/items
  GetItems: ->
    @apiCall('items')

  # Get Item Details
  # http://wiki.guildwars2.com/wiki/API:1/item_details
  GetItemDetails: (item_id) ->
    @apiCall('item_details',{'item_id': item_id})

  # Get Recipes
  # http://wiki.guildwars2.com/wiki/API:1/recipes
  GetRecipes: ->
    @apiCall('recipes')

  # Get Recipe Details
  # http://wiki.guildwars2.com/wiki/API:1/recipe_details
  GetRecipeDetails: (recipe_id) ->
    @apiCall('recipe_details',{'recipe_id': recipe_id})

  # Get Skins
  # http://wiki.guildwars2.com/wiki/API:1/skins
  GetSkins: ->
    @apiCall('skins')

  # Get Skin Details
  # http://wiki.guildwars2.com/wiki/API:1/skin_details
  GetSkinDetails: (skin_id) ->
    @apiCall('skin_details',{'skin_id': skin_id})

  # Get Continents
  # http://wiki.guildwars2.com/wiki/API:1/continents
  GetContinents: ->
    @apiCall('continents')

  # Get Maps
  # http://wiki.guildwars2.com/wiki/API:1/maps
  GetMaps: ->
    @apiCall('maps')

  # Get Map Details
  # http://wiki.guildwars2.com/wiki/API:1/maps
  GetMapsDetails: (map_id) ->
    @apiCall('maps',{'map_id': map_id})

  # Get Map Floor
  # http://wiki.guildwars2.com/wiki/API:1/map_floor
  # example: GetMapFloor([1,1])
  GetMapFloor: (ids) ->
    @apiCall('map_floor',{'continent_id': ids[0], 'floor': ids[1]})

  # Get WVW Matches
  # http://wiki.guildwars2.com/wiki/API:1/wvw/matches
  GetWVWMatches: ->
    @apiCall('wvw/matches')

  # Get WVW Match Details
  # http://wiki.guildwars2.com/wiki/API:1/wvw/match_details
  GetWVWMatchesDetails: (match_id) ->
    @apiCall('wvw/matches',{'match_id': match_id})

  # Get WVW Objective Names
  # http://wiki.guildwars2.com/wiki/API:1/wvw/objective_names
  GetWVWObjectiveNames: ->
    @apiCall('wvw/objective_names')

  # Get Build Version
  # http://wiki.guildwars2.com/wiki/API:1/build
  GetBuild: ->
    @apiCall('build')

  # Get Dyes/Colors
  # http://wiki.guildwars2.com/wiki/API:1/colors
  GetDyes: ->
    @apiCall('colors')

  # Get Files
  # http://wiki.guildwars2.com/wiki/API:1/files
  GetFiles: ->
    @apiCall('files')

  # Tile Render Service
  # http://wiki.guildwars2.com/wiki/API:Tile_service
  # http://wiki.guildwars2.com/wiki/API:Render_service
  RenderService: (signature,file_id,format) ->
    url = 'https://render.guildwars2.com/file/'
    url += signature + '/'
    url += file_id += '.'
    url += format

    # not implemented downloading of render images, but built the URL

  # Get Commerce Exchange
  # http://wiki.guildwars2.com/wiki/API:2/commerce/exchange
  GetExchange: ->
    @apiCall('commerce/exchange', [], 'v2')

  # Get Commerce Exchange for Coins
  # http://wiki.guildwars2.com/wiki/API:2/commerce/exchange/coins
  GetExchangeCoins: (quantity) ->
    @apiCall('commerce/exchange/coins', {'quantity': quantity}, 'v2')

  # Get Commerce Exchange for Gems
  # http://wiki.guildwars2.com/wiki/API:2/commerce/exchange/gems
  GetExchangeGems: (quantity) ->
    @apiCall('commerce/exchange/gems', {'quantity': quantity}, 'v2')

  # Get Commerce Listings
  # http://wiki.guildwars2.com/wiki/API:2/commerce/listings
  # example: GetCommerceListings([19684,19709])
  GetCommerceListings: (ids) ->
    @apiCall('commerce/listings', {'ids': ids}, 'v2')

  # Get Commerce Prices
  # http://wiki.guildwars2.com/wiki/API:2/commerce/prices
  GetCommercePricings: (ids) ->
    @apiCall('commerce/prices', {'ids': ids}, 'v2')

  # Get Quaggans
  # http://wiki.guildwars2.com/wiki/API:2/quaggans
  GetQuaggans: ->
    url = 'https://api.guildwars2.com/v2/quaggans'
    @getJSON(url)

  # Get Quaggans Artwork URLs
  # http://wiki.guildwars2.com/wiki/API:2/quaggans
  GetQuagganImage: (image) ->
    url = 'https://api.guildwars2.com/v2/quaggans'
    url += image
    url += '.jpg'
    @getJSON(url)
