<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Template to match the root element -->
    <xsl:template match="/contacts">
        <!DOCTYPE html>
        <html>
        <head>
            <title>Contact List</title>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <xsl:for-each select="contact">
                <div class="contact">
                    <span class="name"><xsl:value-of select="name"/></span><br/>
                    <xsl:value-of select="address/street"/><br/>
                    <xsl:value-of select="address/city"/><br/>
                    <span class="email"><xsl:value-of select="email"/></span><br/>
                    <span class="phone"><xsl:value-of select="phone"/></span>
                </div>
            </xsl:for-each>
        </body>
        </html>
    </xsl:stylesheet>
