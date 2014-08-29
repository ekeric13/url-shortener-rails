$(document).on("page:change", function(){
  // $(window).on("click", function(){
  //   $('.test').css(("color", "green"))
  // })
  if ($("#profilePage").length > 0) {
    function Color() {

    }
    Color.prototype = {
      makeRed: function() {
      $(this).css("color", "red")
      },
      blue: function() {
        this.style.color = 'blue'
      },
      bindEventListeners: function() {
        $('.test').on('mouseover', this.makeRed);
        var test = document.getElementsByClassName('test')[0];
        test.addEventListener("click", this.blue);
      }
    }
    color = new Color();
    color.bindEventListeners();

    // var Url = {
    //   init: function() {
    //     $('form#new_url').on('ajax:success', this.appendURL),

    //   },
    //  appendUrl: function(event, response, status, xhr) {

    //   $('.url-list').append(response);
    //    }
    // }

    // Url.init();

    // $("#new_article").on("ajax:success", (e, data, status, xhr) ->
    // $("#new_article").append xhr.responseText

    // $('[value="Create Url"]').on("submit", function(e) {
    //   e.preventDefault();
    //   $.ajax({
    //     url: '/urls',
    //     type: 'POST',
    //     data: $(this).serialize()
    //   }).done(function(response) {
    //     debugger
    //     $('.url-list').append(response)
    //   })
    // })
  };


  if ($("#landingPage").length >0){
    console.log('we have landed')

    Galleria.loadTheme("<%= asset_path 'galleria.classic.min.js' %>");
    Galleria.run('.galleria');
  }


})

