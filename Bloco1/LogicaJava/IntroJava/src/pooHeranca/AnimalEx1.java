package pooHeranca;

public abstract class AnimalEx1 {


	private String nome;
	private String idade;
	private String cor;
	private String peso;
	private String som;
	
	public abstract void som();
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getIdade() {
		return idade;
	}
	public void setIdade(String idade) {
		this.idade = idade;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public String getSom() {
		return som;
	}
	public void setSom(String som) {
		this.som = som;
	}	
}
