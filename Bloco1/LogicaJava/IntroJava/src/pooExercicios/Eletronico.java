package pooExercicios;

public class Eletronico {

	String modelo, cor, marca;
	int polegadas;
	boolean liga, transmitindo;
	
		
		
	public Eletronico()
	{
		this.modelo= "Smart TV LED";
		this.cor= "Preta";
		this.marca= "Philco";
		this.polegadas= 50;
		this.liga= true;
		this.transmitindo= true;
	}
	public void sinal()
	{
		
		
		if (this.liga==true)
		{
		System.out.println("TV liga normalmente,");
			
			{
		 if (this.transmitindo==true)
			System.out.println("sinal encontrado.");
		
		 if (this.transmitindo==false)
			System.out.println("sinal não encontrado...");
			}

		}if (this.liga==false)
		System.out.println("TV desligada.");
	}
	
	public void conectada()
	{
		this.transmitindo= true;
	}
	
	public void desconectada()
	{
		this.transmitindo= false;
	}
	
	public void ligada()
	{
		this.liga= true;
	}
	
	public void desliga()
	{
		this.liga= false;
	}
	
	public void estado()
	{
		System.out.println("Televisão Modelo: "+modelo);
		System.out.println("Cor: "+cor);
		System.out.println(polegadas+" Polegadas");
		System.out.println(marca);
		System.out.println("Como está o funcionamento da TV?");
	}
}