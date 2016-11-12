// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require tinymce
//= require_tree .

function SliderWidget(slideElm, styleClass, button, intervalSpeed){
  initializeSlider(slideElm, styleClass);
  sliderClickTransition(slideElm, styleClass, button);
  sliderAutoSlide(styleClass, slideElm, intervalSpeed);
}

// initialize first slider
function initializeSlider(slideElm, styleClass){
  // get first slide active
  $(slideElm).first().addClass(styleClass);
  // hide all other slides
  $(slideElm).hide();
  // show first slide
  $(slideElm).show();
}

// transition slides on click
function sliderClickTransition(slideElm, styleClass, button){
  $(button).on("click", function(){
    sliderTransition(styleClass, slideElm);
  });
}

function sliderAutoSlide(styleClass, slideElm, intervalSpeed){
  setInterval(function(){
    sliderTransition(styleClass, slideElm);
  }, intervalSpeed);
}

function sliderTransition(styleClass, slideElm){
  if($("." + styleClass).is(":last-child")){
    $("." + styleClass).removeClass(styleClass);
    $(slideElm).first().addClass(styleClass);
  }
  else {
    $("." + styleClass).removeClass(styleClass).next().addClass(styleClass);
  }
}

function containerTransition(container) {
  $(window).scroll(function(){
    $(container).each( function(i){
      var top_of_object = $(this).offset().top;
      var bottom_of_window = $(window).scrollTop() + $(window).height();

      if (bottom_of_window > top_of_object){
        $(this).animate({'opacity': '1'}, 700);
      }
    });
  });
}

function heroSlide(header) {
  $(header).hide();
  $(header).slideDown(1800);
}

function onLoadContainerTransition(container) {
  $(window).on("load", function(){
    $(container).each( function(i){
      $(this).animate({'opacity': '1'}, 700);
    });
  });
}

function showDropdownOnHover() {

}

$(document).ready(function() {
  containerTransition(".onScrollContainerTransition");
  onLoadContainerTransition(".onLoadContainerTransition");
  heroSlide(".hero");
  // Auto Slide Options
  var autoSwitch = true;
  var autoSwitchSpeed = 6000;
  SliderWidget(".slide", "active", "#next", autoSwitchSpeed);
  // button: #next, #prev
  // styleClass: .active { opacity: 1; transition: ease-in 1s; }
  // slideElm: .slide
});
