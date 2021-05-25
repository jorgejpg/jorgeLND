<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue May 25 14:54:26 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
			<table>
				<tr>
					<td  bgcolor="green">Nº</td>
					<td  bgcolor="green">CIAL</td>
					<td  bgcolor="green">Total faltas justificadas</td>
				</tr>
				<xsl:apply-templates select="/faltas/alumno" mode="justificado"/>
			</table>
			<br/>
		
	<table>
		
		<tr>
		
			<td  bgcolor="red">Nº</td>
					<td  bgcolor="red">CIAL</td>
					<td  bgcolor="red">Total faltas injustificadas</td>
					<xsl:apply-templates select="/faltas/alumno" mode="injustificado"/>
		
		</tr>
		
	</table>
		
		</body>
	</html>
	</xsl:template>

	<xsl:template match="alumno" mode="justificado">

		<tr>

			<td   bgcolor="green"><xsl:number format="a"/>)</td>

			<td><xsl:value-of select="@cial"/></td>

			<td><xsl:value-of select="count(falta[@tipo='J'])"/></td>

		</tr>

	</xsl:template>

	<xsl:template match="alumno" mode="injustificado">

		<tr>

			<td  bgcolor="red"><xsl:number format="a"/>)</td>

			<td ><xsl:value-of select="@cial"/></td>

			<td>

				<xsl:value-of select="count(falta[@tipo='I'])"/>

				<xsl:if test="count(falta[@tipo='I']) &gt; 5">

				 Pérdida evaluacion continua

				</xsl:if>

			</td>

		</tr>

	</xsl:template>
</xsl:stylesheet>


