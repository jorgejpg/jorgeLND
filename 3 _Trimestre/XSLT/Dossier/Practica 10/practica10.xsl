<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="Category/Feed/item"/>
	
		</noticias>
	</xsl:template> 
	<xsl:template match="item">
	
	<html>
	
		<body>
	
			<table style="width:70%" border="1px">
	
				<tr>
	
					<td><titulo><xsl:value-of select="title"/> 
</titulo>
</td>
				</tr>
			</table>
			<br></br>
	
		</body>
	
	</html>
	</xsl:template> 
</xsl:stylesheet>
