<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed Apr 28 14:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h3>Lista de alumnos:</h3>
			<table>
				<tr>
					<th bgcolor="blue" style="color: white; text-align: left;" >Número</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Curso</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Cial</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Nombre</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Apellidos</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Repetidor</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Total de puntos</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Nota media</th>
				</tr>
				<xsl:for-each select="/instituto/curso/alumno">
					<xsl:sort select="." order="ascending"/>
					<tr>
						<th bgcolor="blue" style="color: white; text-align: left;"><xsl:number format="1"/></th>
						<th style="text-align: left;"><xsl:value-of select="../@nombre"/></th>
						<th style="text-align: left;"><xsl:value-of select="@cial"/></th>
						<th style="text-align: left;"><xsl:value-of select="nombre"/></th>
						<th style="text-align: left;"><xsl:value-of select="apellidos"/></th>
						<th style="text-align: left;"><xsl:value-of select="repetidor"/></th>
						<th style="text-align: left;"><xsl:value-of select="sum(notas/nota)"/></th>
						<th style="text-align: left;"><xsl:value-of select="sum(notas/nota) div count(notas/nota)"/></th>
					</tr>
					
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
