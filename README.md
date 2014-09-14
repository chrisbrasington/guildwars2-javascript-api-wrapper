##guildwars2-javascript-api-wrapper

Simple Javascript Library of Functions for the [Guild Wars 2 public API](http://wiki.guildwars2.com/wiki/API:Main). 

* master - javascript library
* coffeescript-conversion branch - requires [coffeescript compiler](http://coffeescript.org/)

Requirements
------------------
* **jQuery 1.8.0+** (Example using jQuery 2.1.1 hosted on Google's servers)

###Dynamic Events 
* [GetEventNames](http://wiki.guildwars2.com/wiki/API:1/event_namess) - This resource returns an unordered list of the localized event names for the specified language.
* [GetMapNames](http://wiki.guildwars2.com/wiki/API:1/map_names) - This resource returns an unordered list of the localized map names for the specified language. Only maps with events are listed. 
* [GetEventDetails](http://wiki.guildwars2.com/wiki/API:1/event_details) - This resource returns static details about available events. 
* [GetGuildDetails](http://wiki.guildwars2.com/wiki/API:1/guild_details) - This resource returns a details about a guild. 

###Item and Recipe 
* [GetItems](http://wiki.guildwars2.com/wiki/API:1/items) - This resource returns a list of items that were discovered by players in the game. Details about a single item can be obtained using the item details resource. 
* [GetItemDetails](http://wiki.guildwars2.com/wiki/API:1/item_details) - This resource returns a details about a single item. 
* [GetRecipes](http://wiki.guildwars2.com/wiki/API:1/recipes) - This resource returns a list of recipes that were discovered by players in the game. Details about a single recipe can be obtained using the recipe details resource. 
* [GetRecipeDetails](http://wiki.guildwars2.com/wiki/API:1/recipe_details) - This resource returns a details about a single item. 
* [GetSkins](http://wiki.guildwars2.com/wiki/API:1/skins) - This resource returns a list of skins that are available in the game. Details about a single skin can be obtained using the skin details resource. 
* [GetSkinDetails](http://wiki.guildwars2.com/wiki/API:1/skin_details) - This resource returns details about a single skin. 
* [GetDyes](http://wiki.guildwars2.com/wiki/API:1/colors) - This resource returns all dyes in the game, including localized names and their color component information. 
 

###Maps
* [GetContinents](http://wiki.guildwars2.com/wiki/API:1/continents) - This resource returns static information about the continents used with the map floor resource. 
* [GetMaps](http://wiki.guildwars2.com/wiki/API:1/maps) - This resource returns details about maps in the game, including details about floor and translation data on how to translate between world coordinates and map coordinates. 
* [GetMapsDetails](http://wiki.guildwars2.com/wiki/API:1/maps) - This resource returns details about a single map.
* [GetMapFloor](http://wiki.guildwars2.com/wiki/API:1/map_floor) - This resource returns details about a map floor, used to populate a world map. All coordinates are map coordinates. The returned data only contains static content. Dynamic content, such as vendors, is not currently available. 
 
### World Versus World
* [GetWVWMatches]() - This resource returns a list of the currently running WvW matches, with the participating worlds included in the result. Further details about a match can be requested using the wvw match details resource. 
* [GetWVWMatchesDetails](http://wiki.guildwars2.com/wiki/API:1/wvw/match_details) - This resource returns further details about the specified match, including the total score and further details for each map. 
* [GetWVWObjectiveNames](http://wiki.guildwars2.com/wiki/API:1/wvw/objective_names) - This resource returns an unordered list of the localized WvW objective names for the specified language. 

###Commerce
* [GetExchange](http://wiki.guildwars2.com/wiki/API:2/commerce/exchange) - This resource returns a list of accepted resources for the gem exchange. 
* [GetExchangeCoins](http://wiki.guildwars2.com/wiki/API:2/commerce/exchange/coins) - This resource returns the current coins to gems exchange rate. 
* [GetExchangeGems](http://wiki.guildwars2.com/wiki/API:2/commerce/exchange/gems) - This resource returns the current gem to coins exchange rate. 
* [GetCommerceListings](http://wiki.guildwars2.com/wiki/API:2/commerce/listings) - This resource returns current buy and sell listings from the trading post. 
* [GetCommercePricings](http://wiki.guildwars2.com/wiki/API:2/commerce/prices) - This resource returns current aggregated buy and sell listing information from the trading post. 

### Misc API
* [GetBuild](http://wiki.guildwars2.com/wiki/API:1/build) - Build Version
* [GetFiles](http://wiki.guildwars2.com/wiki/API:1/files) - This resource returns commonly requested in-game assets that may be used to enhance API-derived applications. The returned information can be used with the render service to retrieve assets. 
* [RenderService](http://wiki.guildwars2.com/wiki/API:Tile_service) - The render service provides access to in-game assets like item icons and tiles. 

###Quaggans
* [GetQuaggans](http://wiki.guildwars2.com/wiki/API:2/quaggans) - This resource returns quaggans. 
* [GetQuagganImage](http://wiki.guildwars2.com/wiki/API:2/quaggans) - This resource returns quaggan images. 
