package pooExercicios;

public class Funcionario {

	String nome, endereco, contato, cargo, cargaHoraria;
	int idade;
	boolean expediente;
	
		
		
	public Funcionario()
	{
		this.nome= "Roberval de Oliveira";
		this.idade= 42;
		this.cargo= "Seguran�a";
		this.cargaHoraria= "8 horas por dia, 6h-14h";
		this.endereco= "Alameda Dom Pedro, 26 - SBC/SP";
		this.contato= "11977880011";
		this.expediente= true;
	}
	public void expediente()
	{
		if (this.expediente==false)
			System.out.println("Fora do expediente no momento!");
		else
			System.out.println("Prestando servi�os no momento!");
	}
	
	
	public void dentro()
	{
		this.expediente= true;
	}
	
	public void fora()
	{
		this.expediente= false;
	}
	
	public void estado()
	{
		System.out.println("Funcion�rio: "+nome);
		System.out.println("Idade: "+idade);
		System.out.println("Cargo: "+cargo);
		System.out.println("Carga Hor�ria: "+cargaHoraria);		
		System.out.println("Endere�o: "+endereco);
		System.out.println("Contato: "+contato);
		System.out.println("Est� no cargo? "+expediente);
		
	}
}
