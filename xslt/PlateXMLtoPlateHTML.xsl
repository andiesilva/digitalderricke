<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
        xmlns="http://www.w3.org/1999/xhtml"
        xpath-default-namespace="http://www.tei-c.org/ns/1.0">
        
        <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat"
            omit-xml-declaration="yes"/>
        <xsl:template match="/">
            <html>
                <head>
                    <title>Digital Derrick</title>
                    <!-- <meta charset="UTF-8"/>-->
                    <meta name="Description"
                        content="Digital Derricke is a collaborative effort of Dr. Denna Iammarino (Case Western Reserve University) and Dr. Andie Silva (York College/City University of New York); supported by the Freedman Fellows (CWRU) digital scholarship fellowship 2017-2018, Baker-Nord Center for Humanities (CWRU) faculty research grant(2016-2017), Digital Humanities Summer Institute Scholarship to attend the 2017 Conceptualising a Digital Edition course, and PSC-CUNY research grant 2017-2018. XML, XSLT, and web design consultation provided by Rebecca Parker (Loyola University Chicago) beginning at the 2018 Institute for Liberal Arts Digital Scholarship (ILiADS)."/>
                    <meta name="keywords"
                        content="TEI, Text Encoding Initiative, digital edition, electronic edition, electronic text, early modern, English literature, early modern English, renaissance"/>
                    <link rel="stylesheet" type="text/css" href="plates.css"/>
                    <script type="text/javascript" src="plates.js">/**/</script>
                </head>
                <body>
                    <!-- RJP:2018-06-13: We might want to add a template rule that grabs some of the data from our TEI:header. At this time the header needs a lot of correction and editing before we would consider pulling from it for the website's HTML. -->
                    
                       
                    
                    <!--<xsl:apply-templates select="descendant::text"/>-->
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>
