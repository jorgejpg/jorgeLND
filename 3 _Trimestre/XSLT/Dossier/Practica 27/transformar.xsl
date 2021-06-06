<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed May 05 15:02:27 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<h2>SUSPENSOS:</h2>
			<table>
				<tr>
					<th bgcolor="pink" style="color: white; text-align: left;">Número</th>
					<th bgcolor="pink" style="color: white; text-align: left;">Alumno</th>
					<th bgcolor="pink" style="color: white; text-align: left;">Materia</th>
				</tr>
				<xsl:apply-templates select="/instituto/curso/alumno"/>
			</table>
		</body>
	</html>
	</xsl:template>


	<xsl:template match="alumno">
		<tr>
			<td bgcolor="pink" style="color: white; text-align: center;"><xsl:number format="1"/></td>
			<td style="text-align: left;">
				<xsl:value-of select="nombre"/><xsl:value-of select="apellidos"/>
			</td>
			<td>
				<xsl:for-each select="notas/asignatura">
					<xsl:choose>
						<xsl:when test="./nota &lt; 5">
							<xsl:value-of select="@nombre"/><xsl:value-of select="./nota"/><br/>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
