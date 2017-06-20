<%@page import="com.calculadora.modelo.negocio.Matematicas"%>
<%@page import="com.calculadora.portlets.CalculadoraPortlet"%>
<%@page import="javax.portlet.ActionRequest"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

This is the <b>Calculadora</b> portlet in View mode.

<portlet:actionURL var="varOperar">
	<portlet:param name="<%=ActionRequest.ACTION_NAME %>" value="operar"/>
</portlet:actionURL>

<aui:form action="${varOperar}">
	<aui:input type="number" name="<%=CalculadoraPortlet.NUMERO_1 %>" label="<%=CalculadoraPortlet.NUMERO_1 %>"></aui:input>
	<aui:input type="number" name="<%=CalculadoraPortlet.NUMERO_2 %>" label="<%=CalculadoraPortlet.NUMERO_2 %>"></aui:input>
	<aui:select name="<%=Matematicas.OPERACION %>">
		<aui:option value="<%=Matematicas.SUMAR %>"><%=Matematicas.SUMAR %></aui:option>
		<aui:option value="<%=Matematicas.RESTAR %>"><%=Matematicas.RESTAR %></aui:option>
		<aui:option value="<%=Matematicas.MULTIPLICAR %>"><%=Matematicas.MULTIPLICAR %></aui:option>
		<aui:option value="<%=Matematicas.DIVIDIR %>"><%=Matematicas.DIVIDIR %></aui:option>
	</aui:select>
	<aui:button type="submit" value="Calcular"></aui:button>
</aui:form>
