function signinCallback(authResult) {
  var token = gapi.auth.getToken();
  var accessToken = token.access_token;
  if (authResult['access_token']) {
    var accessUrl = 'https://www.googleapis.com/plus/v1/people/me?access_token=' + accessToken;
    $.ajax({
      type: 'GET',
      url: accessUrl,
      async: false,
      contentType: 'application/json',
      dataType: 'jsonp',
      success: function(data) {
        $('#fullname').val(data.displayName);
        $('#email').val(data.id);
        $('.is-this-you').html("<h3>Is this you?</h3><img src='" + "" + "'><br><h4>" + data.displayName + "</h4><br><input type='submit' value='Login or Register'>");
      },
      error: function(e) {
        console.log(e);
        console.log("que mierda");
      }
    });
  }
  else if (authResult['error']) {
    $('.is-this-you').html("<h4>Your request could not be completed at this time</h4>");
  };
}