<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0" version="3.0">
    <xsl:output method="xml" indent="yes"/>
        <!-- ASilva: 06/13/2018: replacing n in note element for marginalia with rend and numbering marginalia -->     
        <xsl:mode on-no-match="shallow-copy"/>
        <xsl:template match='note[@place="margin"]'>
            <xsl:if test="@n"><note place="margin" rend="{@n}" type="marginalia" n='{count(preceding::note[@place="margin"]) +1}'><xsl:apply-templates/></note></xsl:if>
            <xsl:if test="not(@n)">
                <note place="margin" rend="null" type="marginalia" n='{count(preceding::note[@place="margin"]) +1}'><xsl:apply-templates/></note>
            </xsl:if>
        </xsl:template>
    </xsl:stylesheet>