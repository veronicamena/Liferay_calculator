<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.calculadora.modelo.negocio.Matematicas"%>
<%@page import="com.calculadora.portlets.CalculadoraPortlet"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<%
	double resultado = 
		(Double)request.getAttribute(CalculadoraPortlet.RESULTADO);
	String numero1 = 
			ParamUtil.get(request,CalculadoraPortlet.NUMERO_1,"");
	String numero2 = 
			ParamUtil.get(request,CalculadoraPortlet.NUMERO_2,"");
	String operacion = 
			ParamUtil.get(request,Matematicas.OPERACION,"");
%>

<h2>Operacion</h2>
<p>La operacion <%=operacion %> del numero: <%=numero1 %> y del
 <%=numero2 %> es <%=resultado %>
</p>



