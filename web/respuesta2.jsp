<%-- 
    Document   : respuesta2
    Created on : 5/12/2015, 05:45:12 AM
    Author     : Alumno
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <title>Saving Your Car</title>
  
<script type="text/javascript">

window.onunload = sale;
var valor;
if(document.cookie){
	galleta = unescape(document.cookie)
	galleta = galleta.split(';')
	for(m=0; m<galleta.length; m++){
		if(galleta[m].split('=')[0] == "recarga"){
			valor = galleta[m].split('=')[1]
			break;
		}
	}
	if(valor == "sip"){
		document.cookie = "recarga=nop"; 
		window.onunload = function(){};
		document.location.reload()
	}
	else{
	window.onunload=sale
	}
}
function sale(){
	document.cookie ="recarga=sip"
}
</script>

        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    
                      <%
String nom = (String)session.getAttribute("usu");
String compa = (String)session.getAttribute("nomb");

if(nom==null){
     response.setContentType("text/html");  
               out.println("<head>");
                out.println("<link rel=\"stylesheet\" href=\"assets/css/main.css\" />");
                out.println("<script src=\"dist/sweetalert.min.js\"></script> <link rel=\"stylesheet\" type=\"text/css\" href=\"dist/sweetalert.css\">");
                out.println("</head>");
                out.println("<body>");
                out.println("<br>");
                out.println("<script type=\"text/javascript\">");  
                out.println("sweetAlert({\n" +
"    title: \"Error!\",\n" +
"    text: \"Inicia sesion!\",\n" +
"    type: \"error\"\n" +
"},\n" +
"\n" +
"function () {\n" +
"    window.location.href = 'index.html';\n" +
"});"); 
out.println("</script>"); 
}

%>
   <body style="background-image:images/car.jpg ">
        <div>
           <header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="principal.jsp">Inicio</a></li>
							<li>
                                                            <a>Siniestro</a>
								<ul>
									<li><a href="registro1.html">Registrar</a></li>
                                                                        <li><a href="Aconsulta.jsp">Buscar</a></li>
								</ul>
							</li>
                                                       
							<li><a href="Aperfil.jsp">Perfil</a></li>
							<li>
                                                              <form method="post" action="cerrar">
                                                                
                                                           <input type="submit" value= "logout" >     
                                                            </form> </span></li>
						</ul>
					</nav>
				</header>
            <br><br><br>
		<center>
                    <h2>El resultado de tu busqueda es </h2>
                    
                    
                    <%
String Idsiniestro = (String)session.getAttribute("IdSiniestro");
String compania = (String)session.getAttribute("Compania");
String correoU = (String)session.getAttribute("correoU");
String idvehiculo = (String)session.getAttribute("IdVehiculo");
String asegurado = (String)session.getAttribute("asegurado");
String poliza = (String)session.getAttribute("poliza");
String vigenciapol = (String)session.getAttribute("VigenciaPoliza");
String fechaSiniestro = (String)session.getAttribute("fechaSiniestro");
String fechaapertura = (String)session.getAttribute("fechaAperturaCaso");
String fechaclausura = (String)session.getAttribute("fechaClausuraCaso");
String informe = (String)session.getAttribute("Informe");





String idV = (String)session.getAttribute("idV");
String NombreV = (String)session.getAttribute("NombreV");
String marca = (String)session.getAttribute("marca");
String modelo = (String)session.getAttribute("modelo");
String placas= (String)session.getAttribute("placas");
String numS= (String)session.getAttribute("numS");
String numM= (String)session.getAttribute("numM");
String costo = (String)session.getAttribute("costo");

%>


<h1>Datos del vehiculo</h1>
<table>
    <tr>
        <td><font size="4"><b>ID veh�culo</b></td>
        <td><%=idV%> </td></tr>
    <tr>
        <td><font size="4"><b>Veh�culo</b></td>
        <td><%=NombreV%> </td></tr>
    <tr>
        <td><font size="4"><b>Marca</b></td>
        <td><%=marca%></td></tr>
    <tr>
        <td><font size="4"><b>Modelo</b></td>
        <td><%=modelo%></td></tr>
    <tr>
        <td><font size="4"><b>Placas</b></td>
        <td><%=placas%></td></tr>
    <tr>
        <td><font size="4"><b>N�mero de serie</b></td>
        <td><%=numS%></td></tr>
    <tr>
        <td><font size="4"><b>N�mero de motor</b></td>
        <td><%=numM%></td></tr>
    <tr>
        <td><font size="4"><b>Costo</b></td>
        <td><%=costo%></td></tr>

</table>
                    </center>

<br>
<br>
<center>
<h1>Datos del usuario</h1>
<table>
    <tr>
        <td><font size="4"><b>Compa��a</b></td>
        <td><%=compania%> </td></tr>
    <tr>
        <td><font size="4"><b>ID siniestro</b></td>
        <td><%=Idsiniestro%></td></tr>
    <tr>
        <td><font size="4"><b>Correo</b></td>
        <td><%=correoU%></td></tr>
    <tr>
        <td><font size="4"><b>ID veh�culo</b></td>
        <td><%=idvehiculo%></td></tr>
    <tr>
        <td><font size="4"><b>Asegurado</b></td>
        <td><%=asegurado%></td></tr>
    <tr>
        <td><font size="4"><b>Poliza de garant�a</b></td>
        <td><%=poliza%></td></tr>
    <tr>
        <td><font size="4"><b>Vigencia de la poliza</b></td>
        <td><%=vigenciapol%></td></tr>
    <tr>
        <td><font size="4"><b>Fecha del siniestro</b></td>
        <td><%=fechaSiniestro%></td></tr>
    <tr>
        <td><font size="4"><b>Apertura del caso</b></td>
        <td><%=fechaapertura%></td></tr>
    <tr>
        <td><font size="4"><b>Cierre del caso</b></td>
        <td><%=fechaclausura%></td></tr>

</table>
<br>
<br>
</center>
<center>
    <h1>Notas</h1>
    <table> <tr> <td> <%=informe%>  </td> </tr>  </table>  
         </center></div>
        </div>
        </div>
<center>
        <form method="post" action="cambiosin.jsp">
            <input type="submit" value="Editar">
        </form>
        <form method="post" action="pedf" target="_blank">
        <input type="text" value="<%=Idsiniestro%>" name="id2" style="visibility:hidden" readonly>
        <input type="submit" value="Generar pdf">
        </form>
</center>
<%  
            String id=(request.getParameter("idsin2"));
            
         
Connection connectionBD = null;
        Statement sql = null;
   
                
                Class.forName("com.mysql.jdbc.Driver");
            connectionBD = DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","carlos98");
            sql = connectionBD.createStatement();
            ResultSet rs = sql.executeQuery("select * from archivos where Idsiniestro ='"+Idsiniestro+"'") ;
          if(rs.next()){
              String ids =rs.getString("idarchivo");
              //sesion.setAttribute("usu", ids);
              session.setAttribute("idsa", ids);
          }
            
                    
        %>

<center><a href="view_file.jsp?id=<%out.print(rs.getString("idarchivo"));%>" target="_blank">Ver informe PDF</a></center>
                        <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
		
       
    </body>
</html>