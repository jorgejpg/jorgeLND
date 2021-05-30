<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<cartas>
			<xsl:apply-templates select="instituto/curso/alumno[contains(apellidos, 'Pérez')]"/>
	
		</cartas>
	</xsl:template> 
	<xsl:template match="instituto/curso/alumno[contains(apellidos, 'Pérez')]">
	
		<invitacion>
	      

		      	<destinatario><xsl:value-of select="nombre"/> 
		      		<xsl:value-of select="apellidos"/></destinatario>
		      	<evento>
		      		<xsl:text>1ª Congragación de los Pérez</xsl:text>
		      	</evento>
		     </invitacion>
		
	</xsl:template> 
</xsl:stylesheet>
