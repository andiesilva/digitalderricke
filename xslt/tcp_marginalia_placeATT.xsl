<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- ASilva: 06/14/2018: replacing place="margin" in note element for marginalia with place="margin-left" or "margin-right"-->     
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:variable name="file" select="preceding::pb/tokenize(@facs,'BL0')[2]"/>
    <xsl:template match="note[@place='margin'][(xs:int(tokenize($file,'.')[1]) mod 2) = 1]">
        <note place="margin-right" rend="{@rend}" type="{@type}" n="{@n}">
            <xsl:apply-templates/>
        </note>
   </xsl:template>
    <xsl:template match="note[@place='margin'][(xs:int(tokenize($file,'.')[1]) mod 2) = 0]">
        <note place="margin-left" rend="{@rend}" type="{@type}" n="{@n}">
            <xsl:apply-templates/>
        </note>
    </xsl:template>
</xsl:stylesheet>