package br.com.ohexpress.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.ohexpress.dao.PedidoDAO;
import br.com.ohexpress.model.ItemPedido;
import br.com.ohexpress.model.Pedido;

@Controller
@RequestMapping("/admin/pedidos")
public class PedidoController {

	@Autowired
	PedidoDAO daoPed;

	// Lista todos os pedidos
	@RequestMapping("/listarTodos")
	@ResponseBody
	public List<Pedido> ListarPedido() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Lista todos os pedidos por loja
	@RequestMapping("/listPedidoPorLoja/{id}")
	@ResponseBody
	public List<Pedido> ListarPedidoPorLojas(@PathVariable Long id) {

		List<Pedido> listaPedidos = daoPed.listarPorLoja(id);

		return listaPedidos;
	}
	
	//Retorna a quantidade de pedidos cadastrados
	@RequestMapping("/countPedidos")
	@ResponseBody
	public Long QuantidadePedido() {
			

		return daoPed.count();

	}

	// Lista todos os pedidos por usuario ******VERIFICAR SE EH NECESSARIO******
	@RequestMapping("/listarPededidoPorUsuario")
	@ResponseBody
	public List<Pedido> ListarPedidoPorUsuario() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Lista Por Usuario e Status
	@RequestMapping("/VerificaStatusPorUsuario")
	@ResponseBody
	public List<Pedido> VerificaStatusPedidoPorUsuario() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Lista Por Loja e Status
	@RequestMapping("/VerificaStatusPorLoja")
	@ResponseBody
	public List<Pedido> VerificaStatusPedidoPorLoja() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Verificar Status do pedido
	@RequestMapping("/VerificaStatus")
	@ResponseBody
	public List<Pedido> VerificaStatusPedido() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}
	
	
	// Troca o Status do Pedido
	@RequestMapping("/changestatus")
	@ResponseBody
	public String TrocaStatusPedido(@RequestParam("status") int st,@RequestParam("ped") Long pedId) {
		
		Pedido pedido = daoPed.buscaId(pedId);
		pedido.setStatus(st);
		daoPed.update(pedido);
		

		return "ok";
	}
	
	
	
	// Envia Pedido para Operadora de cart�o de credito
	@RequestMapping("/enviaPedidoOperadoraCartao")
	@ResponseBody
	public List<Pedido> EnviaPedidoOperadoraCartao() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}
	// Verifica Status operadora de cart�o
	@RequestMapping("/verificaPedidoOperadoraCartao")
	@ResponseBody
	public List<Pedido> VerificaPedidoOperadoraCartao() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}



	// Inclui Pedido novo
	@RequestMapping("/incluir")
	@ResponseBody
	public List<Pedido> IncluiPedido() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Inclui Pedido novo
	@RequestMapping("/excluir")
	@ResponseBody
	public List<Pedido> ExluiPedido() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	// Atualiza pedido
	@RequestMapping("/atualiza")
	@ResponseBody
	public List<Pedido> AtualizaPedido() {

		List<Pedido> listPed = daoPed.listar();

		return listPed;
	}

	@RequestMapping("/teste")
	@ResponseBody
	public String/* List<Pedido> */Test() {

		Set<ItemPedido> itens = new HashSet<ItemPedido>();
		Pedido pedido = new Pedido();
		ItemPedido item1 = new ItemPedido();
		ItemPedido item2 = new ItemPedido();
		// item1.setProduto(daoProd.buscaId(9L));
		item1.setQuantidade(1);
		// item2.setProduto(daoProd.buscaId(7L));
		item2.setQuantidade(5);
		itens.add(item1);
		itens.add(item2);
		pedido.setItem(itens);
		// pedido.setLoja(daoLoja.buscaPorId(2L));
		daoPed.salvar(pedido);
		/*
		 * List<Pedido> list = daoPed.listar();
		 */
		return "index";
	}

}
