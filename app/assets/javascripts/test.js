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
  };


  if ($("#landingPage").length >0){
    console.log('we have landed')
  }


})

