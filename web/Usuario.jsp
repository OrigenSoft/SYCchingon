
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
String nom = (String)session.getAttribute("NombreEmpleado");
String compa = (String)session.getAttribute("compa");
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
							<li><a href="Usuario.jsp">Inicio</a></li>
							<li>
								<a href="perfil.jsp">Perfil</a>
								
							</li>
							<li><a href="busqueda.html">Buscar</a></li>
                                                        	<li><a href="faq.jsp">Ayuda</a></li>
							<li>
                                                          
                                                             
                                                         
                                                          <li><a href="quejas.jsp">Queja o sugerencia</a></li>
                                                          <li><span class="button disabled"><a href="cerrar">
                                                             Salir  
                                                             </a></span> </li>
						</ul>
					</nav>
				</header>
            <br><br><br>
            <section id="banner">
					<div class="content">
						<header>
							<h2>Bienvenido <%=nom%> de la compa�ia <%=compa%></h2>
							<p><br />
							</p>
						</header>
					</div>
				</section>
		
        </div>
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
