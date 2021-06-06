<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/> 

	<xsl:template match="/">
		<html>
			<body>
				<h1>Lista de cursos ofertados</h1>
				<table>
					<tr >
						<th  style  = "color:white;" bgcolor="blue">Numero</th>
						<th>Curso</th>
						<th>Cial</th>
						<th>Nombre</th>
						<th>Apellidos</th>
						<th>Repetidor</th>
					</tr>
					<xsl:for-each select="/instituto/curso/alumno">
					    <tr>
						      <td  style  = "color:white;" bgcolor="blue"><xsl:number format="1"/></td>
						      <td><xsl:value-of select="../@nombre"/></td>
						      <td><xsl:value-of select="@cial"/></td>
						      <td><xsl:value-of select="nombre"/></td>
						       <td><xsl:value-of select="apellidos"/></td>
						        <td><xsl:value-of select="repetidor"/></td>						      
					    </tr>					    					    					    	
					   </xsl:for-each>
				</table>									
			</body>
		</html>		
	</xsl:template> 
</xsl:stylesheet>
