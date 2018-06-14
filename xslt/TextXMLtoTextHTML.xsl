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
                <!--<link rel="stylesheet" type="text/css" href="text.css"/>-->
                <!--<script type="text/javascript" src="text.js">/**/</script>-->
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>                    
                    <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"/>
            </head>
            <body>
                <!-- RJP:2018-06-14: We might want to add a template rule that grabs some of the data from our TEI:header. At this time the header needs a lot of correction and editing before we would consider pulling from it for the website's HTML. -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <xsl:apply-templates select="descendant::text/descendant::pb" mode="fac"/>
                        </div>
                        <div class="col-sm text">
                            <xsl:apply-templates select="text" mode="text"/>
                        </div>
                        <div class="col-sm margin">
                            <xsl:apply-templates select="text/descendant::note" mode="margin"/>
                        </div>
                    </div>
                </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pb" mode="fac">
        
        <div class="image"><img src="images/{@facs}" class="img-fluid" alt="{@facs} image"/></div>
       
    </xsl:template>
    <xsl:template match="note[@type='marginalia']" mode="margin">
            <xsl:text>[</xsl:text><xsl:apply-templates select="@type"/><xsl:text>]</xsl:text><span class="marginalia"><xsl:apply-templates select="descendant::note[@type='marginalia']"/></span>
    </xsl:template>
    <xsl:template match="note[not(@type='marginalia')]" mode="margin">
        <xsl:text>[marginalia]</xsl:text><span class="marginalia"><xsl:apply-templates select="descendant::note[@type='marginalia']"/></span>
    </xsl:template>
    
    <xsl:template match="div">
        <div class="{@type}"><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="lg">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="l">
        <xsl:apply-templates/><br/>
    </xsl:template>
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>