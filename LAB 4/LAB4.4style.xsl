<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" encoding="UTF-8"/>


  <xsl:template match="/students">
    <xsl:apply-templates/>
  </xsl:template>


  <xsl:template match="student">
    <xsl:value-of select="concat('Name: ', name, ', Address:', address, ', Roll no: ', rollno, '&#10;')"/>
  </xsl:template>
</xsl:stylesheet>
