<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001 /XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="resources/css/main.css/course_listing.css"/>
                <link rel="stylesheet" type="text/css" href="resources/css/main.css/departments_listing.css"/>
                <title>Harvard University Faculty of Arts and Sciences</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>