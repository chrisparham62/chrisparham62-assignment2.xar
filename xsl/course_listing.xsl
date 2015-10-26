<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:import href="common.xsl"/>
    <xsl:template match="courses">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Harvard University Faculty of Arts and Sciences</title>
                <link rel="stylesheet" type="text/css" href="resources/css/main.css/course_listing.css"/>
            </head>
            <body>
                <h1>Harvard University Faculty of Arts and Sciences
                    <xsl:value-of select="departments"/>
                </h1>
                <h2>Departments</h2>
                <ul>
                    <xsl:apply-templates select="course"/>
                </ul>
                <p>
                    <a href="departments">Back to department list</a>
                </p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="course">
        <li>
            <strong>
                <xsl:value-of select="title"/>
            </strong>
            <br/>
            <xsl:value-of select="description"/>
        </li>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>