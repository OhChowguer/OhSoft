/* JS */

/* Flex image slider */


$('.flex-image').flexslider({
  direction: "vertical",
  controlNav: false,
  directionNav: true,
  pauseOnHover: true,
  slideshowSpeed: 10000      
});


/* Flexslider for product images */


$('.product-image-slider').flexslider({
  direction: "vertical",
  controlNav: false,
  directionNav: true,
  pauseOnHover: true,
  slideshowSpeed: 10000      
});

/* Carousel */

$(document).ready(function() {
			
	 var recent = $("#owl-recent");
	 
	recent.owlCarousel({
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		items : 4,
		mouseDrag : false,
		pagination : false
	});
	
	$(".next").click(function(){
			recent.trigger('owl.next');
	  })
	  
	  $(".prev").click(function(){
			recent.trigger('owl.prev');
	  })
});


/* Support */

$("#slist a").click(function(e){
   e.preventDefault();
   $(this).next('p').toggle(200);
});



/* Scroll to Top */

$(document).ready(function(){
  $(".totop").hide();

  $(function(){
    $(window).scroll(function(){
      if ($(this).scrollTop()>600)
      {
        $('.totop').fadeIn();
      } 
      else
      {
        $('.totop').fadeOut();
      }
    });

    $('.totop a').click(function (e) {
      e.preventDefault();
      $('body,html').animate({scrollTop: 0}, 500);
    });

  });
});

$(document).ready(function() {
	$('#data-table-Hpedido').dataTable({
	   "sPaginationType": "full_numbers",
	   "oLanguage": { "sLengthMenu": "Mostrar _MENU_ registros por página", "sZeroRecords": "Nenhum registro encontrado", "sInfo": "Mostrando _START_ / _END_ de _TOTAL_ registro(s)", "sInfoEmpty": "Mostrando 0 / 0 de 0 registros", "sInfoFiltered": "(filtrado de _MAX_ registros)", "sSearch": "Pesquisar: ", "oPaginate": { "sFirst": "Início", "sPrevious": "Anterior", "sNext": "Próximo", "sLast": "Último" } },
		   
	});
});