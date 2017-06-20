package com.calculadora.portlets;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.calculadora.modelo.negocio.Matematicas;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class CalculadoraPortlet
 */
public class CalculadoraPortlet extends MVCPortlet {
 
	public static final String NUMERO_1 = "Numero1";
	public static final String NUMERO_2 = "Numero2";
	public static final String RESULTADO = "resultado";
	public static final String MVC_PATH = "mvcPath";

	
	public void operar(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException {
		
		String numero1 = ParamUtil.get(actionRequest, NUMERO_1, "");
		String numero2 = ParamUtil.get(actionRequest, NUMERO_2, "");
		String operacion = ParamUtil.get(actionRequest, Matematicas.OPERACION, "");
		
		double dNumero1 = Double.parseDouble(numero1);
		double dNumero2 = Double.parseDouble(numero2);
		
		Matematicas matematicas = new Matematicas();
		double resultado = 0;
		switch (operacion) {
		case Matematicas.SUMAR:
			resultado = matematicas.sumar(dNumero1, dNumero2);
			break;

		case Matematicas.RESTAR:
			resultado = matematicas.restar(dNumero1, dNumero2);		
			break;
		
		case Matematicas.MULTIPLICAR:
			resultado = matematicas.multiplicar(dNumero1, dNumero2);
			break;
		
		case Matematicas.DIVIDIR:
			resultado = matematicas.dividir(dNumero1, dNumero2);
			break;
		}
		
		actionRequest.setAttribute(RESULTADO, resultado);
		actionResponse.setRenderParameter(MVC_PATH, "/html/calculadora/resultado.jsp");
	}
}
