package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RestController;

@RestController


public class HelloController {

	@GetMapping("/hello")
	public String hello() {
		return "Hello World!!";
	}
	
	@GetMapping("/listabsm")
	public String listabsm() {
		return "\nBSM's:"+ "\nMentalidade de Crescimento \nPersistência \nResponsabilidade Pessoal "
				+ "\nOrientação ao Futuro \nComunicação \nOrientação ao Detalhe \nProatividade \nTrabalho em Equipe";
	}

	@GetMapping("/objetivo")
	public String objetivo() {
		return "O objetivo dessa semana é aprender a trabalhar com MySQL e Spring.";
	}
	
}