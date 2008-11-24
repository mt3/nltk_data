<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/nltk_data">
        <HTML>
            <HEAD>
                <TITLE>NLTK Corpora</TITLE>
            </HEAD>
            <BODY bgcolor="white" text="navy">
                <H1>NLTK Corpora</H1>
                <OL>
                <xsl:for-each select="//packages/package">
                    <LI><I><xsl:value-of select="@name"/></I>
                        [<xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@url"/>                                
                            </xsl:attribute>
                            download
                        </xsl:element>
                        |<xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@webpage"/>                                
                            </xsl:attribute>
                            source
                        </xsl:element>]
                        <BR/>
                        id: <xsl:value-of select="@id"/>;
                        size: <xsl:value-of select="@size"/>;
                        author: <xsl:value-of select="@author"/>;
                        license: <xsl:value-of select="@license"/>;
                        <P/>
                    </LI>
                </xsl:for-each>
                </OL>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>
