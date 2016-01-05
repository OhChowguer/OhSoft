


$(document).ready(function() {

	$.get("/ohexpress/admin/loja/countLojas", function(result) {
		$("#LojasCount").text(result)

	});

	$.get("/ohexpress/admin/pedidos/countPedidos", function(result) {
		$("#PedidosCount").text(result)

	});

	$.get("/ohexpress/admin/usuario/countUsuarios", function(result) {
		$("#UserCount").text(result)

	});

	$('#selectItensProdutoOp').multiselect({
		buttonWidth : '400px',
		dropRight : true,
		includeSelectAllOption : true,
		allSelectedText : 'Todas',
		nonSelectedText : 'Nenhuma Selecionada',
		selectAllText : 'Selecionar todas'

	});

	$('#selectItensProdutoAd').multiselect({
		buttonWidth : '400px',
		dropRight : true,
		includeSelectAllOption : true,
		allSelectedText : 'Todas',
		nonSelectedText : 'Nenhuma Selecionada',
		selectAllText : 'Selecionar todas'

	});

});

// $('.add-to-cart').on(
// 'click',
// function addLista () {

function addLista(id) {
	var proId = id
	var qtdProd = 1
	var cart = $('.shopping-cart');
	var imgtodrag = $("#" + id).eq(0);
	if (imgtodrag) {
		var imgclone = imgtodrag.clone().offset({
			top : imgtodrag.offset().top,
			left : imgtodrag.offset().left
		}).css({
			'opacity' : '0.5',
			'position' : 'absolute',
			'height' : '150px',
			'width' : '150px',
			'z-index' : '100'
		}).appendTo($('body')).animate({
			'top' : cart.offset().top + 10,
			'left' : cart.offset().left + 10,
			'width' : 75,
			'height' : 75
		}, 1000, 'easeInOutExpo');

		imgclone.animate({
			'width' : 0,
			'height' : 0
		}, function() {
			$(this).detach()

			$.get("/ohexpress/lojas/addprod/"+id+"?qtdprod="+qtdProd, function(result) {
				

			});
			
			setTimeout(function(){
			    location.reload();
			},200);
			
		});
	}

}
// });

// setInterval(function() {

// $.get("${pageContext.request.contextPath}admin/lojas/countLojas",
// function(result) {
// $("#UserCount").text(result)

// });

// }, 5000);
function chanceStPed(st, pedId) {

	$.post("/ohexpress/admin/pedidos/changestatus?status=" + st + "&ped="
			+ pedId, {

	}, function(result) {

		if (result == "ok") {
			alert("ok")
		} else {
			alert("nops")
		}

	});
}

$("#ceploja").change(function() {
	var cep_code = $(this).val();
	if (cep_code.length <= 0)
		return;
	$.get("http://apps.widenet.com.br/busca-cep/api/cep.json", {
		code : cep_code
	}, function(result) {
		if (result.status != 1) {
			alert(result.message || "Houve um erro desconhecido");
			return;
		}
		// $("input#cep").val( result.code );
		// $("input#estado").val( result.state );
		$("input#cidade").val(result.city);
		$("input#bairro").val(result.district);
		$("input#endereco").val(result.address);
		$("input#estado").val(result.state);
		$("input#pais").val("Brasil");
	});
});
function delloja(id) {

	$.post("/ohexpress/admin/loja/deleta/" + id, {

	}, function(result) {

		if (result == "ok") {
			alert("ok")
		} else {
			alert("nops")
		}

	});
}

// ADDINPUT
$('#list1').addInputArea();

$("input[type='file']").fileinput({
	// initialPreview: [
	// "<img src='"+$()+"' class='file-preview-image' alt='The Moon' title='The
	// Moon'>"
	// ],
	showCaption : true,
	showRemove : false,
	showUpload : false,
	browseLabel : 'Procurar'

});
// SELECTS
$("select[multiple]").bsmSelect({
	addItemTarget : 'bottom',
	animate : true,
	highlight : true,
	listClass : 'list-group',
	selectClass : 'form-control',
	removeLabel : '<i class="fa fa-trash-o"></i>',
	listItemClass : 'list-group-item list-group-item-warning'
});

$("#ceploja").mask("99999-999");


$('#formCadComprador').validator();

$('#formLoginComprador').validator();

/*
 * // PLUGIN DE UPLOAD DE IMAGENS $('#imgprod').ezdz({ text : 'Selecione uma
 * imagem', validators : { maxWidth : 600, maxHeight : 400 }, reject :
 * function(file, errors) { if (errors.mimeType) { alert(file.name + ' must be
 * an image.'); }
 * 
 * if (errors.maxWidth) { alert(file.name + ' must be width:600px max.'); }
 * 
 * if (errors.maxHeight) { alert(file.name + ' must be height:400px max.'); } }
 * });
 * 
 * $('#imgprod2').ezdz({ text : 'Selecione uma imagem', validators : { maxWidth :
 * 600, maxHeight : 400 }, reject : function(file, errors) { if
 * (errors.mimeType) { alert(file.name + ' must be an image.'); }
 * 
 * if (errors.maxWidth) { alert(file.name + ' must be width:600px max.'); }
 * 
 * if (errors.maxHeight) { alert(file.name + ' must be height:400px max.'); } }
 * }); $('#imgprod3').ezdz({ text : 'Selecione uma imagem', validators : {
 * maxWidth : 600, maxHeight : 400 }, reject : function(file, errors) { if
 * (errors.mimeType) { alert(file.name + ' must be an image.'); }
 * 
 * if (errors.maxWidth) { alert(file.name + ' must be width:600px max.'); }
 * 
 * if (errors.maxHeight) { alert(file.name + ' must be height:400px max.'); } }
 * });
 * 
 * $('#imgtoploja').ezdz({ text : 'Selecione uma imagem', validators : {
 * maxWidth : 1200, maxHeight : 600 }, reject : function(file, errors) { if
 * (errors.mimeType) { alert(file.name + ' must be an image.'); }
 * 
 * if (errors.maxWidth) { alert(file.name + ' must be width:600px max.'); }
 * 
 * if (errors.maxHeight) { alert(file.name + ' must be height:400px max.'); } }
 * });
 */