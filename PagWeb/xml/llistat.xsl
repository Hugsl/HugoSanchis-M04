<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/plats">
<html>
 <head>
      <meta charset="utf-8" />
         <link rel="stylesheet" href="../css/P02_hugoSanchis_list.css" />
         <title>Delicias Kitchen</title>
   </head>
     <div id='anuncio' class='anuncio'>
    <a href='Javascript:void' onClick='closebar(); return false'><img align='right' border='0' src='./imagenes/cruz.png'/></a><br />
    <a href='concurs.html' target="_blank"><img src='../imagenes/ad.gif'/></a>
    </div>
<body>
 <header >
    <img src="../imagenes/delicias.png" class="imgD"/>
    
      <nav>
        <hr/>
        <table class="marginNav">
           <tr>
              <td >
                 <p><a href="/index.html">Inicio</a>
                    <a href=""> Sobre mí</a>
                    <a href="/llistat.html">	Recetas</a>
                    <a href="2.html"> Contacto</a>
                    <a href="OT.html"> Otras cosas</a>
                 </p>
              </td>
           </tr>
        </table>
        <hr/>
     </nav>
   </header>
<article>
   <section>
<xsl:for-each select="plat">   
    <tr>
   
         <aside><img src="{foto}" class="fotos" />
        
         </aside>
        
     <xsl:for-each select="titol">
    <h1>
     <a href="{url}"><xsl:value-of select="@url"/>   <xsl:value-of select="nom"/>  </a></h1>
     </xsl:for-each>
    
     
     
     
      <h3>Descripción:</h3>
      <td><xsl:value-of select="descripcio"/></td>
      <h4>Tiempo:</h4>
      <td><xsl:value-of select="temps"/></td>
    </tr>
    <hr/>
    </xsl:for-each>
    </section>
   </article>
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