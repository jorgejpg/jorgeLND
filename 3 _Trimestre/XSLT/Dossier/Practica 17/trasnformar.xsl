<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<html>
			<body>
				<h1>Lista alumnos con alguna materia suspensa:</h1>
				<xsl:apply-templates select="/instituto/curso"/>						
			</body>
		</html>		
	</xsl:template> 
	<xsl:template match="curso">

			<xsl:value-of select="@nombre"/><br/>
			<xsl:apply-templates select="alumno[notas/nota &lt;5]"/>

	</xsl:template>		
	<xsl:template match="alumno">	
		<xsl:number  format="i"/>  <xsl:value-of select="nombre"/> 
		<xsl:apply-templates select="notas"/>
	</xsl:template>		
	<xsl:template match="notas">		
			 tiene materia suspensa	
		<br/>
	</xsl:template>
	
		
</xsl:stylesheet>
