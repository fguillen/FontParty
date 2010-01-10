$(function(){
  $('.font-party').each(function (i) {
    element_boring_content = $(this).text().replace( /\s+/g, " " );
    element_fun_content = "";
    chars = element_boring_content.split('');
    for( ii in chars ){
      element_fun_content += "<div class='font-party-element font-party-char-" + chars[ii].charCodeAt(0) + "'></div>";
    }
    
    element_fun_content += "<div class='font-party-clear'></div>"
    $(this).html( element_fun_content );
  });
});