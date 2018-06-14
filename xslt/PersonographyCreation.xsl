<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/">
    <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
    <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml"
	schematypens="http://purl.oclc.org/dsdl/schematron"?>
    <TEI xmlns="http://www.tei-c.org/ns/1.0">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>Digital Derrike Prosopography</title>
                </titleStmt>
                <publicationStmt>
                    <p>Born-digital file. Created on 2018-06-14 by project consultant Rebecca J. Parker at ILiADS18. Last updated 2018-06-14.</p>
                </publicationStmt>
                <sourceDesc>
                    <p>This document is generated from the back file of plates_EUL.xml created by project editor Andrea Silva. At the time of creation the plates_EUL.xml file contained transcriptions for plates 1-6.</p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <text>
            <body>
                <xsl:apply-templates select="descendant::listPerson"/>
            </body>
        </text>
    </TEI>
    </xsl:template>
</xsl:stylesheet>