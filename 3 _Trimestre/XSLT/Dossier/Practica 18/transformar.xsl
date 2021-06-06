<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<html>
			<body>
				<h1>Lista de cursos ofertados</h1>
				<table>
					<tr >
						<th  style  = "color:white;" bgcolor="blue">Codigo</th>
						<th>Nombre</th>
					</tr>
					<xsl:for-each select="/instituto/curso">
					    <tr>
						      <td  style  = "color:white;" bgcolor="blue"><xsl:number format="1"/></td>
						      <td><xsl:value-of select="@nombre"/></td>
					    </tr>
					   </xsl:for-each>
				</table>									
			</body>
		</html>		
	</xsl:template> 
</xsl:stylesheet>
