package br.edu.infnet.appatmatheusregis.model.repository;
import java.util.List;

import org.springframework.data.domain.Sort;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatmatheusregis.model.negocio.Usuario;

@Repository
public interface IUsuarioRepository extends CrudRepository<Usuario, Integer> {
	
	@Query("from Usuario u where u.email=:email and u.senha=:senha")
	Usuario autenticacao(String email, String senha);	
	
	List<Usuario> findAll(Sort by);
	
}

