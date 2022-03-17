package pooExercicios;

public class Cliente {

	String nome, endereco, email, contato;
	int idade;
	boolean cadastrado;
	
	
	public Cliente()
	{
		this.nome= "Cleiton Silva";
		this.idade= 25;
		this.email= "cleitinhosilva@gmail.com";
		this.endereco= "Rua Frei Gaspar, 600 - SBC/SP";
		this.contato= "11955667788";
		this.cadastrado= false;
	}
	public void novo()
	{
		if (this.cadastrado==true)
			System.out.println("Registrando cadastro...");
		else
			System.out.println("Cliente já cadastrado.");
	}
	
	
	public void cadastrar()
	{
		this.cadastrado= true;
	}
	
	public void descadastrar()
	{
		this.cadastrado= false;
	}
	
	public void estado()
	{
		System.out.println("Cliente: "+nome);
		System.out.println("Idade: "+idade);
		System.out.println("Email: "+email);
		System.out.println("Endereço: "+endereco);
		System.out.println("Contato: "+contato);
		System.out.println("Novo cliente? "+cadastrado);
		
	}
}