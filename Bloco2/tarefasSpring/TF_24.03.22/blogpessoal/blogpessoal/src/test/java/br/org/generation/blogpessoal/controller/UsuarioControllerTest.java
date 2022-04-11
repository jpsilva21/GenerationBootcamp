package br.org.generation.blogpessoal.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Optional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import br.org.generation.blogpessoal.model.Usuario;
import br.org.generation.blogpessoal.service.UsuarioService;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UsuarioControllerTest {

	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired  //somente no teste de controller, pois usamos o padrao rest que utiliza verbos e metodos HTT,GET,POSTPUT e DELeTE
	private TestRestTemplate testRestTemplate;
	
	@Test
	@Order(1)
	@DisplayName("Cadastrar apenas um usuario")
	public void deveCadastrarUsuario( ) {
		
		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(new Usuario (0L,"Jose","jose@pedra.com","12345","nImporta"));
		ResponseEntity<Usuario> resposta = testRestTemplate.exchange("/usuarios/cadastrar",HttpMethod.POST, requisicao, Usuario.class);
		
		assertEquals(HttpStatus.CREATED, resposta.getStatusCode());
		assertEquals(requisicao.getBody().getNome(),resposta.getBody().getNome());
		assertEquals(requisicao.getBody().getUsuario(), resposta.getBody().getUsuario());
	}
	
	@Test
	@Order(2)
	@DisplayName("Não deve permitir duplicação do Usuário")
	public void naoDeveDuplicarUsuario() {
		usuarioService.cadastrarUsuario(new Usuario (0L,"Cleber","cleber@pedra.com","12345","nImporta"));
		
		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(new Usuario (0L,"Cleber","cleber@pedra.com","12345","nImporta"));
		
		ResponseEntity<Usuario> resposta = testRestTemplate.exchange("/usuarios/cadastrar", HttpMethod.POST, requisicao, Usuario.class);
		
		assertEquals(HttpStatus.BAD_REQUEST, resposta.getStatusCode());
	}
	
	@Test
	@Order(3)
	@DisplayName("Alterar um Usuário")
	public void deveAlterarUmUsuario() {
		Optional<Usuario> usuarioCreate = usuarioService.cadastrarUsuario(new Usuario (0L,"Ines","ines@pedra.com","12345","nImporta"));
	
		Usuario usuarioUpdate = new Usuario(usuarioCreate.get().getId(), "Ines Costa","ines_costa@pedra.com","12345","nImporta");
	
		HttpEntity<Usuario> requisicao = new HttpEntity<Usuario>(usuarioUpdate);
		
		ResponseEntity<Usuario> resposta = testRestTemplate
				.withBasicAuth("root","root")
				.exchange("/usuarios/atualizar", HttpMethod.PUT, requisicao, Usuario.class);
	
		assertEquals(HttpStatus.OK, resposta.getStatusCode());
		assertEquals(usuarioUpdate.getNome(), resposta.getBody().getNome());
		assertEquals(usuarioUpdate.getUsuario(), resposta.getBody().getUsuario());

	}
	
	@Test
	@Order(4)
	@DisplayName("Listar todos os  Usuário")
	public void deveMostrarTodosUsuario() {
		usuarioService.cadastrarUsuario(new Usuario(0L,"Bruna Luna","bruna@pedra.com","12345","nImporta"));
	
		usuarioService.cadastrarUsuario(new Usuario(0L,"Ricardo Ardo","ricardo@pedra.com","12345","nImporta"));

		ResponseEntity<String> resposta = testRestTemplate
				.withBasicAuth("root", "root")
				.exchange("/usuarios/all", HttpMethod.GET, null, String.class);
		
		assertEquals(HttpStatus.OK, resposta.getStatusCode());
	}
	
	
}
