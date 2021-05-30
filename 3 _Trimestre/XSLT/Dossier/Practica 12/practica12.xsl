<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Wed Apr 28 15:49:52 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<html>
		<body>
		
			<xsl:apply-templates select="/instituto/curso"/>
			</body>
		</html>

	</xsl:template> 
	<xsl:template match="curso">


			<table style="width:70%" border="1px">
	
			<tr>
	
				<td  colspan="3" bgcolor ="blue"   ><xsl:value-of select="@nombre"/></td>
	
			</tr>
				<tr  bgcolor ="pink">
					<td>Cial </td>
					<td>Nombre</td>
					<td>Apellido</td>					
				</tr>
				
					
<xsl:apply-templates select="alumno"/>
					
						
				
				
			</table>
			<br></br>
	
	
	</xsl:template> 
	
	<xsl:template match="alumno">
		<tr>
			<td  bgcolor ="green"  style  = "color:white;">
<xsl:value-of select="@cial"/> 
</td>
			<td><xsl:value-of select="nombre"/>
</td>
			<td><xsl:value-of select="apellidos"/> 
</td>
		</tr>
			
	</xsl:template> 
</xsl:stylesheet>
