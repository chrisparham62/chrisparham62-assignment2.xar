<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:import href="common.xsl"/>
    <xsl:output method="html"/>
    <xsl:apply-imports/>
    <link rel="stylesheet" type="text/css" href="resources/css/courselisting.css"/>
    <xsl:template match="departments">
        <h1>
            <xsl:value-of select="courses"/>
        </h1>
        <ul>
            <xsl:apply-templates select="courses"/>
        </ul>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="courses">
        <table border="1">
            <tr>
                <th>Course Group</th>
                <th>Course</th>
                <th>Term</th>
                <th>Title</th>
                <th>Type</th>
            </tr>
        </table>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>