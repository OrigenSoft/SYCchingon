<%-- 
    Document   : registro1.jsp
    Created on : 21/04/2016, 08:36:10 AM
    Author     : Alumno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Saving Your Car</title>
        <meta charset="utf-8" />
		<title>Saving Your Car</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main_1.css" />
                <link rel="stylesheet" href="dist/sweetalert.css" type="text/css">
                <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <script>
  $(function() {
    $( "#vipoliza" ).datepicker({ 
    dateFormat: "mm/dd/yy",
    defaultDate: "01/01/2016",
    minDate: "01/01/1925",
    maxDate: "12/31/2020",
    changeMonth: true,
    changeYear: true,
    yearRange: "1925:2020",
    onClose: function(dateText, inst) {
        var validDate = $.datepicker.formatDate( "mm/dd/yy", $('#vipoliza').datepicker('getDate'));
            $('#vipoliza').datepicker('setDate', validDate);
        }
    });
});
$(function() {
    $( "#fesi" ).datepicker({ 
    dateFormat: "mm/dd/yy",
    defaultDate: "01/01/2016",
    minDate: "01/01/1925",
    maxDate: "12/31/2020",
    changeMonth: true,
    changeYear: true,
    yearRange: "1925:2020",
    onClose: function(dateText, inst) {
        var validDate = $.datepicker.formatDate( "mm/dd/yy", $('#fesi').datepicker('getDate'));
            $('#fesi').datepicker('setDate', validDate);
        }
    });
});
$(function() {
    $( "#feap" ).datepicker({ 
    dateFormat: "mm/dd/yy",
    defaultDate: "01/01/2016",
    minDate: "01/01/1925",
    maxDate: "12/31/2020",
    changeMonth: true,
    changeYear: true,
    yearRange: "1925:2020",
    onClose: function(dateText, inst) {
        var validDate = $.datepicker.formatDate( "mm/dd/yy", $('#feap').datepicker('getDate'));
            $('#feap').datepicker('setDate', validDate);
        }
    });
});
$(function() {
    $( "#feclau" ).datepicker({ 
    dateFormat: "mm/dd/yy",
    defaultDate: "01/01/2016",
    minDate: "01/01/1925",
    maxDate: "12/31/2020",
    changeMonth: true,
    changeYear: true,
    yearRange: "1925:2020",
    onClose: function(dateText, inst) {
        var validDate = $.datepicker.formatDate( "mm/dd/yy", $('#feclau').datepicker('getDate'));
            $('#feclau').datepicker('setDate', validDate);
        }
    });
});
  </script>

		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
           
    </head>
    <script type="text/javascript">
                  
        
    function validacp(e)
            {
                var keycar;
                if(window.event)
                    keycar = e.keyCode;
                else
                    if(e.which)
                        keycar=e.which;
                if(keycar>=48 && keycar<=57)
                    return true;
                else
                    return false;
                
            }
            function valida(e)
            {
                var keylet;
                if(window.event)
                    keylet = e.keyCode; /*IE*/
                else
                    if(e.which)
                        keylet = e.which; //Netscape firefox opera
                
                if((keylet>=97&&keylet<=122)||keylet===8 ||keylet===32 || keylet===239 ||keylet>=65&&keylet<=90 ||keylet>=160&&keylet<=163)
                  return true;
                else
                  return false;
            }
			  function especial(){
                var textos= document.getElementById("idVehiculo").value
                 document.getElementById("idVehiculo2").value = textos;
                
            }
                    
                </script>
                <%
                   
            String id=(request.getParameter("idsin2"));
            
         
Connection connectionBD = null;
        Statement sql = null;
   int j=0;
   
                ArrayList compa = new ArrayList();
                
                Class.forName("com.mysql.jdbc.Driver");
            connectionBD = DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","n0m3l0");
            sql = connectionBD.createStatement();
            ResultSet rs = sql.executeQuery("select * from Usuario") ;
          while(rs.next()){
              String com=rs.getString("Compania");
              compa.add(j, com);
              
          }
            
                    
        %>
                    
                    
                    %>
    <body oncopy="return false" oncut="return false" onpaste="return false" class="landing">
        <div  >
            <header id="header">
					<h1 id="logo">Saving Your Car</h1>
					<nav id="nav">
						<ul>
							<li><a href="principal.jsp">Inicio</a></li>
							<li>
                                                            <a>Siniestro</a>
								<ul>
									<li><a href="registro1.jsp">Registrar</a></li>
                                                                        <li><a href="Aconsulta.jsp">Buscar</a></li>
								</ul>
							</li>
                                                        
                                                        <li>
                                                      
									<a>Codigo</a>
                                                                        <ul>
                                                                            <li> <a href="codigoalt.jsp">Alta</a> </li>
                                                                            <li> <a href="codigocon.jsp">Consulta</a>  </li>
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
		
            <form method="post" action="alta2" enctype = "multipart/form-data" class="container 50%">
                <div style="width:100%;">
                    <center> <h2><b>Registro</b></h2></center>
            <div style="width:90%; float:left;" >
                   
                    <div><h3>Siniestro</h3>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="idSiniestro" id="idSiniestro" onKeyPress="return validacp(event)" value="" placeholder="N&uacute;mero de siniestro" required/><br>
                            <input type="text" name="idVehiculo2" id="idVehiculo2" value="" placeholder="N&uacute;mero de veh&iacute;culo" readonly /><br>
                            
                            <select name="compania" id="compania">
                                <option>Seleccione la compania</option>
   <%  for(int i = 0; i < compa.size(); i++) {
           String option = (String)compa.get(i);
   %>
   <option value="<%= option %>"><%= option %></option>
   <% } %>
</select>
                            
                            
                            <input type="email" name="correoU" id="correoU" value="" placeholder="Correo electr&oacute;nico" required/><br>
                            <input type="text" name="asegurado" id="asegurado" value="" placeholder="Asegurado" required/><br>
                            <input type="text" name="poliza" id="poliza" value="" placeholder="P&oacute;liza" required/><br>
                            <div><h3>Vigencia de la Poliza</h3></div><div disabled>
                                <input type="text" name="vipoliza" value="" id="vipoliza" required readonly>
                             
                             </div>
                            <div><h3>Fecha del Siniestro</h3></div><div disabled>
                             <input type="text" name="fesi" value="" id="fesi" required readonly>
                             
                             </div>
                            <div><h3>Fecha de Apertura del Caso</h3></div><div disabled>
                                <input type="text" name="feap" value="" id="feap" required readonly>
                             
                             </div>
                            
                            <div><h3>Fecha de Clausura del caso</h3></div><div disabled>
                            <input type="text" name="feclau" value="" id="feclau" required readonly>
                             <br><br>
                             <input type="text" name="info" id="info" value="" placeholder="Notas del informe" required><br>
                            
                          
                        
                             <h4>Coloque la informacion de su correo</h4>
                             <input type="email" name="correo2" placeholder="Correo Admimistrador"  required>
                             <input type="password" name="pass" placeholder="Contraseña"  required>
                             
                             </div>
                              
                                 
                        </div>
                    </div>
                <br><br>
                            <input class="button enabled" type="submit" value="Registrar">
                        </div>
            <div style="width:10%; float:right;">
                    <div align="center"><h3>Veh&iacute;culo</h3>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="idVehiculo" id="idVehiculo" value="" placeholder="N&uacute;mero de veh&iacute;culo" onKeyPress="return validacp(event)" onkeyup="especial()" required/><br>
                            <input type="text" name="nombreVehiculo" id="nombreVehiculo" value="" placeholder="Veh&iacute;culo"   required/><br>
                            <input type="text" name="marca" id="marca" value="" placeholder="Marca" required/><br>
                            <div class="select-wrapper">
                                
                                <select id="modelo" name="modelo">
                                    <option >Modelo</option>
                                    <script>
                                    var myDate = new Date();
                                    var year = myDate.getFullYear();
                                    for(var i = year+1; i >=1930; i--){
                                            document.write('<option value="'+i+'">'+i+'</option>');
                                    }
                                    </script>
                                </select>
                            </div><br>
                            <input type="text" name="placas" id="placas" value="" placeholder="Placas"/><br>
                            <input type="text" name="numeroSerie" id="numeroSerie"  value="" onKeyPress="return validacp(event)" maxlength="8"  placeholder="N&uacute;mero de serie" required/><br>
                            <input type="text" name="numeroMotor" id="numeroMotor" value="" onKeyPress="return validacp(event)" maxlength="8" placeholder="N&uacute;mero de motor" required/><br>
                            <input type="text" name="costo" id="costo" value="" onKeyPress="return validacp(event)" maxlength="8"  placeholder="Costo" required/><br><br>
                            <br>
                            <br>
                            <h5>Selecciones el informe </h5>
                            <input type="file" name="wor" required>
                            </form>
                           
                            
                            
                            
                            
                        </div>
                    </div>
                   
            </div>
                    
                    
                    
                    
                    </div>
                   
            </div>
  

          
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>            
                        
                        
                          
    </body>
</html>
