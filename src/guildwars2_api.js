// Generated by CoffeeScript 1.8.0
var GuildWars2API;

GuildWars2API = (function() {
  function GuildWars2API() {}

  GuildWars2API.prototype.getJSON = function(url) {
    return Promise.resolve($.ajax({
      url: url,
      type: 'GET',
      dataType: 'json'
    }));
  };

  GuildWars2API.prototype.apiCall = function(apiCallFunction, parameters, version) {
    var count, url;
    url = 'https://api.guildwars2.com/';
    if (typeof version === 'undefined') {
      url += 'v1/';
    } else {
      url += 'v2/';
    }
    url += apiCallFunction + '.json';
    if (parameters != null) {
      count = 0;
      $.each(parameters, function(key, value) {
        if (count === 0) {
          url += '?';
          count = count + 1;
        } else {
          url += '&';
        }
        return url += key + '=' + value;
      });
    }
    return this.getJSON(url);
  };

  GuildWars2API.prototype.GetEventNames = function() {
    return this.apiCall('event_names');
  };

  GuildWars2API.prototype.GetMapNames = function() {
    return this.apiCall('map_names');
  };

  GuildWars2API.prototype.GetEventDetails = function() {
    return this.apiCall('event_details');
  };

  GuildWars2API.prototype.GetGuildDetails = function(guild_id) {
    return this.apiCall('guild_details', {
      'guild_id': guild_id
    });
  };

  GuildWars2API.prototype.GetItems = function() {
    return this.apiCall('items');
  };

  GuildWars2API.prototype.GetItemDetails = function(item_id) {
    return this.apiCall('item_details', {
      'item_id': item_id
    });
  };

  GuildWars2API.prototype.GetRecipes = function() {
    return this.apiCall('recipes');
  };

  GuildWars2API.prototype.GetRecipeDetails = function(recipe_id) {
    return this.apiCall('recipe_details', {
      'recipe_id': recipe_id
    });
  };

  GuildWars2API.prototype.GetSkins = function() {
    return this.apiCall('skins');
  };

  GuildWars2API.prototype.GetSkinDetails = function(skin_id) {
    return this.apiCall('skin_details', {
      'skin_id': skin_id
    });
  };

  GuildWars2API.prototype.GetContinents = function() {
    return this.apiCall('continents');
  };

  GuildWars2API.prototype.GetMaps = function() {
    return this.apiCall('maps');
  };

  GuildWars2API.prototype.GetMapsDetails = function(map_id) {
    return this.apiCall('maps', {
      'map_id': map_id
    });
  };

  GuildWars2API.prototype.GetMapFloor = function(ids) {
    return this.apiCall('map_floor', {
      'continent_id': ids[0],
      'floor': ids[1]
    });
  };

  GuildWars2API.prototype.GetWVWMatches = function() {
    return this.apiCall('wvw/matches');
  };

  GuildWars2API.prototype.GetWVWMatchesDetails = function(match_id) {
    return this.apiCall('wvw/matches', {
      'match_id': match_id
    });
  };

  GuildWars2API.prototype.GetWVWObjectiveNames = function() {
    return this.apiCall('wvw/objective_names');
  };

  GuildWars2API.prototype.GetBuild = function() {
    return this.apiCall('build');
  };

  GuildWars2API.prototype.GetDyes = function() {
    return this.apiCall('colors');
  };

  GuildWars2API.prototype.GetFiles = function() {
    return this.apiCall('files');
  };

  GuildWars2API.prototype.RenderService = function(signature, file_id, format) {
    var url;
    url = 'https://render.guildwars2.com/file/';
    url += signature + '/';
    url += file_id += '.';
    return url += format;
  };

  GuildWars2API.prototype.GetExchange = function() {
    return this.apiCall('commerce/exchange', [], 'v2');
  };

  GuildWars2API.prototype.GetExchangeCoins = function(quantity) {
    return this.apiCall('commerce/exchange/coins', {
      'quantity': quantity
    }, 'v2');
  };

  GuildWars2API.prototype.GetExchangeGems = function(quantity) {
    return this.apiCall('commerce/exchange/gems', {
      'quantity': quantity
    }, 'v2');
  };

  GuildWars2API.prototype.GetCommerceListings = function(ids) {
    return this.apiCall('commerce/listings', {
      'ids': ids
    }, 'v2');
  };

  GuildWars2API.prototype.GetCommercePricings = function(ids) {
    return this.apiCall('commerce/prices', {
      'ids': ids
    }, 'v2');
  };

  GuildWars2API.prototype.GetQuaggans = function() {
    var url;
    url = 'https://api.guildwars2.com/v2/quaggans';
    return this.getJSON(url);
  };

  GuildWars2API.prototype.GetQuagganImage = function(image) {
    var url;
    url = 'https://api.guildwars2.com/v2/quaggans';
    url += image;
    url += '.jpg';
    return this.getJSON(url);
  };

  return GuildWars2API;

})();
