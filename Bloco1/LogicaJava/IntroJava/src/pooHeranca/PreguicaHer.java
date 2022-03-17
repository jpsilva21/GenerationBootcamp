package pooHeranca;

public class PreguicaHer extends AnimalEx1{

	private String escala;

	public String getEscala() {
		return escala;
	}

	public void setEscala(String escala) {
		this.escala = escala;
	}
	

	@Override
	public void som() {
		System.out.println("Berra...");
	}
}
