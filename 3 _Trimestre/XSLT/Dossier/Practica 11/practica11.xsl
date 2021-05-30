<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Wed Apr 28 15:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes"/>
	
	<xsl:template match="/">
		<html>
			<h2>Lista de Nombres y Apellidos</h2>
				<table>
					<xsl:apply-templates select="/instituto/curso/alumno" />
				</table>
			<h2>Lista de ciales y curso</h2>
				<table>
					<xsl:apply-templates select="/instituto/curso/alumno" mode="imprimeCial" />
				</table>
		</html>
	</xsl:template>
	
	<xsl:template match="alumno">
		<tr>
			<td><xsl:value-of select="nombre" /></td>

			<td><xsl:value-of select="apellidos" /></td>
		</tr>

	</xsl:template>
	
	<xsl:template match="alumno" mode="imprimeCial">
		<tr>
			<td><xsl:value-of select="@cial" /></td>
			<td><xsl:value-of select="curso" /></td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>


