package com.calculadora.modelo.negocio;

public class Matematicas {
	
	public static final String OPERACION = "Operacion";
	public static final String SUMAR = "Sumar";
	public static final String RESTAR = "Restar";
	public static final String MULTIPLICAR = "Multiplicar";
	public static final String DIVIDIR = "Dividir";
	
	public double sumar(double numero1,double numero2) {
		return numero1+numero2;
	}
	
	public double restar(double numero1,double numero2) {
		return numero1-numero2;
	}
	
	public double multiplicar(double numero1,double numero2) {
		return numero1*numero2;
	}
	
	public double dividir(double numero1,double numero2) {
		return numero1/numero2;
	}
}
