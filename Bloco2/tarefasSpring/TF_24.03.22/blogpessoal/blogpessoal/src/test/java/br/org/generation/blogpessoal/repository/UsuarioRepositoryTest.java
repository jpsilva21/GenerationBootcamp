package br.org.generation.blogpessoal.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import br.org.generation.blogpessoal.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)// para ñ criar conflito enquanto ta criando o teste, abre numa Porta Rondomica 
@TestInstance(TestInstance.Lifecycle.PER_CLASS) //pra conseguir testar o test unitario
public class UsuarioRepositoryTest {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@BeforeAll //cadastrar um usuario antes e dps fazer o teste
	void start() {
		usuarioRepository.save(new Usuario(0L,"DJ Cleiton Rasta","cleitinho@pedra.com","123","nImporta"));
		usuarioRepository.save(new Usuario(0L,"DJ Laurinha Lero","laurinha@pedra.com","1234","nImporta"));
		usuarioRepository.save(new Usuario(0L,"Deolane","deolane@pedra.com","12345","nImporta"));
		usuarioRepository.save(new Usuario(0L,"Mc Naninha","naninha@pedra.com","123456","nImporta"));
	}
	
	@Test
	@DisplayName("Retorna apenas um usuário")
	public void deveRetornarUmUsuario() {
		Optional<Usuario> usuario = usuarioRepository.findByUsuario("naninha@pedra.com");
				assertTrue(usuario.get().getUsuario().equals("naninha@pedra.com"));
	}
	
	@Test
	@DisplayName("Retorna dois usuários")
	public void deveRetornarDoisUsuarios() {
		List<Usuario> listaDeUsuarios = usuarioRepository.findAllByNomeContainingIgnoreCase("DJ");
		assertEquals(2, listaDeUsuarios.size()); //usa .SIZE p comparar se o tamanho de listaDeUsuarios é igual ao que foi pedido (no caso 2)
		
									//Prova real, confere se o que foi pedido está na posição certa
		assertTrue(listaDeUsuarios.get(0).getNome().equals("DJ Cleiton Rasta"));
		assertTrue(listaDeUsuarios.get(1).getNome().equals("DJ Laurinha Lero"));
									//Prova real, confere se o que foi pedido está na posição certa
	}
}
