<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- ASilva: 06/13/2018: corrects file name linking in @facs from Oxford TCP to digitalderricke file names -->
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="pb">
            <xsl:if test="(count(preceding::pb) + 1) ge 10">
                <pb facs="BL0{count(preceding::pb) + 1}.jpg"/>
            </xsl:if>
        <xsl:if test="(count(preceding::pb) + 1) lt 10">
            <pb facs="BL00{count(preceding::pb) + 1}.jpg"/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>