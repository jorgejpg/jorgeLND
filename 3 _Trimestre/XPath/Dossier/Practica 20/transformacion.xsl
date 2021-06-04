<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates select="//curso[@nombre='1º DAI']/alumno[count(../alumno) - 1]/nombre/text()"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
