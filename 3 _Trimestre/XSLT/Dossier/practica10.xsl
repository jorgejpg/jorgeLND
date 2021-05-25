<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Wed May 12 15:14:38 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/2001/WD-xslt11-20010824/">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<noticias>
			<xsl:apply-templates select="/Category/Feed/Item"/>
		</noticias>
	</xsl:template> 

	<xsl:template match="item">
	<html>
		<body>
		
	<table border="1" width="70%"  >
		
		<tr>
		
			<td>
		
				<titulo>
	      						<xsl:apply-templates select="title"></xsl:apply-templates>
	    	  				</titulo>
		
			</td>
		
		</tr>
		
	</table>
			<br>
			</br>	 
		</body>
	</html>
	      
	</xsl:template> 
</xsl:stylesheet>
