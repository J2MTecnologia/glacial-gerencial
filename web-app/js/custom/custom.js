/**
Custom module for you to write your own javascript functions
**/
if (typeof jQuery !== 'undefined') {
    (function($) {

        //Disable right click
        $(document).bind("contextmenu",function(e) {
                e.preventDefault();
        });

        $( document ).on( "keydown", function( event ) {
          //disable F12
          if(event.which ==123  || e.button==2 )
             event.preventDefault();
        });

        $('textarea').addClass("ckeditor");
        $('textarea').parent().removeClass("col-md-4");
        $('textarea').parent().addClass("col-md-9");
        
        if ($("#file")) {
            $("#contentType").change(function() {
               if ($( this ).val()=="File"){
                    $("#file").parent().parent().show();   
                    $("#url").parent().parent().hide();   
               }else if ($( this ).val()=="URL") {
                    $("#file").parent().parent().hide();   
                    $("#url").parent().parent().show();   
               }
            });
            $("#file").parent().parent().hide();   
        }

    })(jQuery);
}

CKEDITOR.config.removePlugins='forms,save,print,newPage,about'
