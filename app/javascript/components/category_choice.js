$(document).ready(function(){
  $(".category-choice").click(function() {
    $(this).toggleClass("active");
    var not_clicked_elements = $(this).siblings('.category-choice');
    not_clicked_elements.removeClass("active");
  });
});
