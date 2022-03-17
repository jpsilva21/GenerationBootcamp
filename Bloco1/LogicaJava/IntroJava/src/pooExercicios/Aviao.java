package pooExercicios;

public class Aviao {

	String modelo, finalidade, empresa, motor;
	int nPassageiros, maxPassageiros, tripulacao;
	boolean transito;
	
		
		
	public Aviao()
	{
		this.modelo= "Airbus A320";
		this.motor= "Bimotor";
		this.finalidade= "Transporte Comercial";
		this.empresa= "LATAM";
		this.maxPassageiros= 20;
		this.nPassageiros= 19;
		this.tripulacao= 5;
		this.transito= true;
	}
	public void transitar()
	{
		if (this.transito==true)
			System.out.println("Aeronave transitando em espaço aéreo!!!");
		else
			System.out.println("Aeronave estacionada!");
	}
	
	
	public void transitando()
	{
		this.transito= true;
	}
	
	public void estacionado()
	{
		this.transito= false;
	}
	
	public void estado()
	{
		System.out.println("Aeronave modelo: "+modelo+ " " +motor);
		System.out.println("Tipo de transporte: "+finalidade);
		System.out.println("Empresa aérea: "+empresa);
		System.out.println("Máxima de passageiros permitida: "+maxPassageiros);
		System.out.println("Número de passageiros a bordo: "+nPassageiros);
		System.out.println("Tripulantes a bordo: "+tripulacao);
		System.out.println("Aeronave em trânsito? "+transito);
		
	}
}