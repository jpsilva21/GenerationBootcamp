package pooCollections;

import java.util.ArrayList;
import java.util.Collections;

public class Ex3collection {
	
	public static void main(String[] args) {
		
		String cimento = "Cimento";
		String argamassa = "Argamassa";
		String azulejo = "Azulejo";
		String parafuso = "Parafuso";
		String ceramica = "Cerâmica";
		
		ArrayList<String>material = new ArrayList<>();
		
		System.out.println(material);
		
		material.add(cimento);
		material.add(argamassa);
		material.add(azulejo);
		material.add(parafuso);
		material.add(ceramica);
		
		System.out.println(material);
		
		material.remove(3);
		
		System.out.println(material);
		
		material.add(3, "Lajota");
		
		System.out.println(material);

		Collections.sort(material);
		
		System.out.println(material);
	}

}
