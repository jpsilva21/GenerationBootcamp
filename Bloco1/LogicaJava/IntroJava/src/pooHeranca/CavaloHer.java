package pooHeranca;

public class CavaloHer extends AnimalEx1 {

		private String corre;

		public String getCorre() {
			return corre;
		}

		public void setCorre(String corre) {
			this.corre = corre;
		}

		@Override
		public void som() {
			System.out.println("Relincha");
			
		}	
}
