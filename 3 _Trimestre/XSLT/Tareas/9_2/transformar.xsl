<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Sun May 30 16:12:42 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		
	<table>
		
		<tr>
		
			<td  bgcolor="pink" style="width: 50%; text-align: left; border-style: solid; border-color: pink"> TITULO</td>
		
			<td  bgcolor="pink" style="width: 50%; text-align: left; border-style: solid; border-color: pink">CONTENIDO</td>
		
		</tr>
		
		<xsl:apply-templates select="/rss/channel/item" mode="abril"/>
		
	</table>
		
	<br/><br/>
			<table>
				<tr>
					<td  bgcolor="pink" style="width: 25%; text-align: left; border-style: solid; border-color: pink">FECHA</td>
					<td  bgcolor="pink" style="width: 25%; text-align: left; border-style: solid; border-color: pink">TITULO</td>
					<td  bgcolor="pink" style="width: 50%; text-align: left; border-style: solid; border-color: pink">CONTENIDO</td>
				</tr>
				<xsl:apply-templates select="/rss/channel/item" mode="sc"></xsl:apply-templates>
			</table>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="item" mode="abril">
		<xsl:choose>
			<xsl:when test="description[contains(text(), 'abril')]">
				<tr>
					<td  bgcolor="pink" style="text-align: left; border-style: solid; border-color: pink"><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="description"/></td>
				</tr>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="item" mode="sc">
		<xsl:choose>
			<xsl:when test="title[contains(text(),'santa cruz')]">
				<tr>
					<td  bgcolor="pink" style="text-align: left; border-style: solid; border-color: pink"><xsl:value-of select="pubDate"/></td>
					<td><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="description"/></td>
				</tr>
			</xsl:when>
			<xsl:when test="title[contains(text(),'S/C')]">
				<tr>
					<td  bgcolor="pink" style="text-align: left; border-style: solid; border-color: pink"><xsl:value-of select="pubDate"/></td>
					<td><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="description"/></td>
				</tr>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>


