<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/plate">
		<html>
			<head>
				<meta charset="utf-8" />
			<link rel="stylesheet" href="./css/P02_hugoSanchis_plats.css" />	
				<title>Delicias Kitchen</title>
			</head>
			<body>
				<header>
					<img src="./imagenes/delicias.png" class="imgD">
						<nav>
							<hr>
								<table class="marginNav">
									<tr>
										<td>
											<p>
												<a href="./index.html">Inicio</a>
												<a href="">Sobre mí</a>
												<a href="./llistat.html"> Recetas</a>
												<a href="./2.html">Contacto</a>
												<a href="./OT.html"> Otras cosas</a>
											</p>
										</td>
									</tr>
								</table>
								<hr/>
								</nav>
							</header>
							<xsl:for-each select="plates/plate">
								<section class="marginH1">
									<h1>
										<xsl:value-of select="title" />
									</h1>
								</section>
								<aside class="asideR">
									<a href="">
										<img src="./imagenes/Concurs de Receptes.jpg" class="imgAd">
										</a>
									</aside>
									<section class="marginE">
										<article>
											<h2> Ingredients</h2>
											<xsl:for-each select="ingredients/ingredients">
												<table>
													<ul>
														<tr>
															<p>
																<xsl:value-of select="." />
															</p>
														</tr>
													</tr>
												</ul>
											</table>
										</xsl:for-each>
									</article>
									<article>
										<h3> Temps </h3>
										<h2> Passos </h2>
										<xsl:for-each select="passos/pas">
											<table>
												<ol>
													<tr>
														<p>
															<xsl:value-of select="." />
														</p>
													</tr>
												</ol>
											</table>
										</xsl:for-each>
										<img src="..\imagenes\Pasta.jpg" height="50%" class="imgC"></img>
									</article>
								</section>
							</xsl:for-each>
							<footer>
								<table class="marginNav">
									<tr>
										<td>
											<p>
												<a href="index.html" class="afooter">Inicio</a>
												<a href="" class="afooter">Sobre mí</a>
												<a href="1.html" class="afooter"> Recetas</a>
												<a href="2.html" class="afooter">Contacto</a>
												<a href="OT.html" class="afooter"> Otras cosas</a>
											</p>
										</td>
									</tr>
								</table>
								<!-- <img src="./imagenes/working.gif">-->
							</footer>
						</body>
					</html>
				</xsl:template>
			</xsl:stylesheet>