<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:import href="common.xsl"/>
    <xsl:template match="departments">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Harvard University Faculty of Arts and Sciences</title>
                <link rel="stylesheet" type="text/css" href="resources/css/main.css/departments_listing.css"/>
            </head>
            <body>
                <h2>Harvard University Faculty of Arts and Sciences</h2>
                <h3>Departments</h3>
                <ul>
                    <xsl:apply-templates select="department"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="department">
        <li>
            <a href="courses?code={@code}">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>