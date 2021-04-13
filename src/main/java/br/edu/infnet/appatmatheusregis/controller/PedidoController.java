package br.edu.infnet.appatmatheusregis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatmatheusregis.model.negocio.Pedido;
import br.edu.infnet.appatmatheusregis.model.negocio.Usuario;
import br.edu.infnet.appatmatheusregis.model.service.ClienteService;
import br.edu.infnet.appatmatheusregis.model.service.PedidoService;



@Controller
public class PedidoController {
	
	@Autowired
	private PedidoService pedidoService;
	
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/pedido")
	public String showPedido(Model model, @SessionAttribute("user") Usuario usuario	) {
		
		model.addAttribute("lista", pedidoService.obterLista(usuario));
		model.addAttribute("clientes", clienteService.obterLista());	
		
		return "pedido/detalhe";
	}
	
	@PostMapping(value = "/pedido/incluir")
	public String incluir (Pedido pedido, @SessionAttribute("user") Usuario usuario) {
		
		
		pedido.setTotal(pedido.getQuantidade() * pedido.getValor());
		pedido.setUsuario(usuario);
		pedidoService.incluir(pedido);
		
		return "redirect:/pedido";
		
	}

	@GetMapping(value ="/pedido/{id}/excluir")
	public String excluir(@PathVariable Integer id ) {
		
		pedidoService.excluir(id);
		
		return "redirect:/pedido";
	}
	
	
}
