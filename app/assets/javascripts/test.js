$(document).on("page:change", function(){
  // $(window).on("click", function(){
  //   $('.test').css(("color", "green"))
  // })
  if ($("#profilePage").length > 0) {

    var makeRed = function() {
    $(this).css("color", "red")
    }
    $('.test').on('mouseover', makeRed);

    var test = document.getElementsByClassName('test')[0];
    var blue = function() {
      this.style.color = 'blue'
    };
    test.addEventListener("click", blue)
  };


  if ($("#landingPage").length >0){
    console.log('we have landed')
  }


})

