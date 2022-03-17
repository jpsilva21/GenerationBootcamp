package pooExercicios;

public class Funcionario {

	String nome, endereco, contato, cargo, cargaHoraria;
	int idade;
	boolean expediente;
	
		
		
	public Funcionario()
	{
		this.nome= "Roberval de Oliveira";
		this.idade= 42;
		this.cargo= "Segurança";
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
			System.out.println("Prestando serviços no momento!");
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
		System.out.println("Funcionário: "+nome);
		System.out.println("Idade: "+idade);
		System.out.println("Cargo: "+cargo);
		System.out.println("Carga Horária: "+cargaHoraria);		
		System.out.println("Endereço: "+endereco);
		System.out.println("Contato: "+contato);
		System.out.println("Está no cargo? "+expediente);
		
	}
}
