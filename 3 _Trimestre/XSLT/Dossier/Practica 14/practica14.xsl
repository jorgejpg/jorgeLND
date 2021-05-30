<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="Category/Feed/item"/>
	
		</noticias>
	</xsl:template> 
	<xsl:template match="item">
		
			<xsl:element name="noticia">
						
				<xsl:attribute name="autor">
<xsl:value-of select="author"/></xsl:attribute>
				<xsl:attribute name="fecha">
<xsl:value-of select="pubDate"/></xsl:attribute>
				<xsl:value-of select="title"/>
			</xsl:element>
			
			

			      			     	
	</xsl:template> 
</xsl:stylesheet>
