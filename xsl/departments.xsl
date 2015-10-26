<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html"/>
    <xsl:import href="common.xsl"/>
    <link rel="stylesheet" type="text/css" href="resources/css/departments.css"/>
    <xsl:template match="departments">
        <h2>Harvard University Faculty of Arts and Sciences</h2>
        <ul>
            <xsl:apply-templates select="course"/>
        </ul>
    </xsl:template>
    <xsl:template match="course">
        <li>
            <a href="courses?code={@code}">
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>