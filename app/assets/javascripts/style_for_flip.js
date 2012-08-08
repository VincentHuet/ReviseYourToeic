    $(document).ready(function(){

      // set up hover panels
      // although this can be done without JavaScript, we've attached these events
      // because it causes the hover to be triggered when the element is tapped on a touch device
      $('.hover').hover(function(){
        $(this).addClass('flip');
      },function(){
        $(this).removeClass('flip');
      });

      // set up click/tap panels
      $('.click').toggle(function(){
        $(this).addClass('flip');
      },function(){
        $(this).removeClass('flip');
      });

      // set up block configuration
      $('.block .action').click(function(){
        $('.block').addClass('flip');
      });
      $('.block .edit-submit').click(function(e){
        $('.block').removeClass('flip');

        // why not update that list for fun?
        $('#list-title').text($('#form_title').val());
        $('#list-items').empty();
        for (var num = 1; num <= $('#form_items').val(); num++) {
          $('#list-items').append('<li>Name '+num+'</li>');
        }
        e.preventDefault();
      });

      // set up contact form link
      $('.contact .action').click(function(e){
        $('.contact').addClass('flip');
        e.preventDefault();
      });
      $('.contact .edit-submit').click(function(e){
        $('.contact').removeClass('flip');
        // just for effect we'll update the content
        e.preventDefault();
      });

    });