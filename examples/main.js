$(document).ready(function() {

  // All API calls return a promise.

  // All calls still asynchronous, allowing you to have multiple calls going on at once,
  // but you can use .then() to yield where necessary

  // Use .then to get resolved data from a promise
  GetMaps().then(function(data) {
    log('GetMaps succeed', data);
  });

  // If you need data from multiple promises, use Promise.all(<array>)
  Promise.all([GetEventNames(), GetEventDetails()]).then(function(data) {
    // data[0] = GetMaps() results
    // data[1] = GetEventNames() results
    log('Promise.all succeed', data);
  });

  // Add a 2nd function to .then() to handle errors
  GetExchangeGems(-1).then(function(data) {
    // if we somehow succeed, hooray!
    log('GetExchangeGems succeed');
  }, function(error) {
    // error handle
    log('GetExchangeGems error', error);
  });

  // You can sequantially execute promises by chaining
  GetItems()
    .then(function(data) {
      log('1st in chain succeed');
      return GetItemDetails(data.items[0]);
    })
    .then(function(data) {
      log('2nd in chain succeed', data);
    });

});
