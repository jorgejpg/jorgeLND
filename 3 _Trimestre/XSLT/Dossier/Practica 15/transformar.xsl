<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<html>
			<body>
				<h1>Lista de cursos disponibles:</h1>
				<xsl:apply-templates select="/instituto/curso"/>
		
				
			</body>
		</html>
		
	</xsl:template> 
	<xsl:template match="curso">
							
			<xsl:number  format="a"/>)  <xsl:value-of select="@nombre"/><br/>				
						      			     	
	</xsl:template> 
</xsl:stylesheet>
