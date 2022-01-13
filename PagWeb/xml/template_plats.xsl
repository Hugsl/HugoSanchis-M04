<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/plates">
		<html>
		<head>
			<meta charset="utf-8" />
         	<link rel="stylesheet" href="../css/P02_hugoSanchis_plats.css" />
         	<title>Delicias Kitchen</title>
		</head>
			<body>
			 <header>
			
			<img src="/imagenes/delicias.png" class="imgD"/> <br/>
   <nav>
        <hr/>
        <table class="marginNav">
           <tr>
              <td >
                 <p><a href="/index.html">Inicio </a>
                    <a href=""> Sobre mí </a>
                    <a href="/llistat.html">	Recetas </a>
                    <a href="/2.html"> Contacto </a>
                    <a href="/OT.html"> Otras cosas</a>
                 </p>
              </td>
           </tr>
        </table>
        <hr/>
     </nav>
</header>
			
			
		<aside class="asideR">
      			<a href=""><img   src="../imagenes/Concurs de Receptes.jpg" class="imgAd"/></a>
      
   				</aside>	
			
			
  
     <section class="marginE"> 
        
		<article>			
			    <xsl:for-each select="plate"> 
 				
				
				
				 
				
				<h1>	<xsl:value-of select="title"/><br/> </h1>
						<xsl:for-each select="autor"> <br/>
							<xsl:value-of select="nom"/><br/>
							<xsl:value-of select="dni"/><br/>
						</xsl:for-each>
				
				<h3> Ingredients </h3>
					<table>
					<ol>
             		 
					<xsl:for-each select="ingredients"> <br/>
						<xsl:for-each select="ingredient">
							<xsl:value-of select="nom"/><br/>
							<xsl:for-each select="quantitat">
								<xsl:value-of select="valor"/>
								<xsl:value-of select="mesura"/><br/>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:for-each>
				
					</ol>
					</table>
			
			
			
					<h3> Passos </h3>
			
				
			<table>
					<ol>
					<xsl:for-each select="passos/pas"><br/>
						<xsl:value-of select="."/><br/>
					</xsl:for-each>
					
					</ol>
					</table>
				
				</xsl:for-each>
			
			
			
			
			
			
			
			
			   	</article>
      			</section> 
				 
				 <footer>
				 <table class="marginNav">
				 <tr>
				 	<td>
					  <p><a href="index.html" class="afooter">Inicio</a>
                     <a href="1.html" class="afooter">	| Recetas</a>
                     <a href="2.html" class="afooter"> | Contacto</a>
                     <a href="OT.html" class="afooter"> | Otras cosas</a></p>
					</td>
				 </tr>
				 </table>
				 </footer>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>