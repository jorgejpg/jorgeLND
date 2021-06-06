<?xml version="1.0" encoding="UTF-8"?>
<!-- New document created with EditiX at Wed May 05 15:02:27 BST 2021 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h2>Lista de cursos alumnos:</h2>
			<table>
				<tr>
					<th bgcolor="blue" style="color: white; text-align: left;">Número</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Curso</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Cial</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Nombre</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Apellidos</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Repetidor</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Total de puntos</th>
					<th bgcolor="blue" style="color: white; text-align: left;">Nota media</th>
				</tr>
				<xsl:apply-templates select="/instituto/curso/alumno"/>
			</table>
		</body>
	</html>
	</xsl:template>


	<xsl:template match="alumno">

		<tr>

			<td rowspan="5" bgcolor="blue" style="color: white; text-align: center;"><xsl:number format="1"/></td>

			<td style="text-align: left;"><xsl:value-of select="../@nombre"/></td>

			<td style="text-align: left;"><xsl:value-of select="@cial"/></td>

			<td style="text-align: left;"><xsl:value-of select="nombre"/></td>

			<td style="text-align: left;"><xsl:value-of select="apellidos"/></td>

			<td style="text-align: left;"><xsl:value-of select="repetidor"/></td>

			<td style="text-align: left;"><xsl:value-of select="sum(notas/asignatura/nota)"/></td>

			<td style="text-align: left;"><xsl:value-of select="sum(notas/asignatura/nota) div count(notas/asignatura/nota)"/></td>

		</tr>

		<xsl:for-each select="notas/asignatura">

			<tr>		
				<td colspan="5" >
					<xsl:number format="a"/>) 
					<xsl:value-of select="@nombre"/>
				</td>	
				<td>
					<xsl:value-of select="./nota"/>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="nota">
		<td><xsl:value-of select="."/></td>
	</xsl:template>
</xsl:stylesheet>
