package br.edu.infnet.appatmatheusregis.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatmatheusregis.model.negocio.Usuario;
import br.edu.infnet.appatmatheusregis.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;
	
	
	public void incluir(Usuario usuario) {		
		usuarioRepository.save(usuario);
	}	
	
	public List<Usuario> obterLista(){
		return (List<Usuario>)usuarioRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
		
	}
		
	public void excluir(Integer id) {
		usuarioRepository.deleteById(id);
		
	}
	
	public Usuario autenticacao(String email, String senha) {
		return usuarioRepository.autenticacao(email, senha);
		
	}
}