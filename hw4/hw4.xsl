<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">

<html lang="en">
  <head>
    <title>ABC Financial Startup</title>
    <link rel="stylesheet" type="text/css" href="hw4.css" />
  </head>
  <body>
   <h1>ABC Financial Startup</h1>
  <p align="center"><img src="financialstartup.jpg" /></p>
  <p>We are a very young financial management company and we are very proud of our clients.</p>
  <p>We started with just 1 client 10 years ago, and now we have
  <xsl:value-of select="count(Accounts/Client)" />
   clients.</p>
<p>These are our clients:
<xsl:for-each select="Accounts/Client/Name">
<xsl:choose>
  <xsl:when test="First = 'Jane'">
    and <xsl:value-of select="First" />&#160;<xsl:value-of select="Last" />
  </xsl:when>
  <xsl:otherwise>
    <xsl:value-of select="First" />&#160;<xsl:value-of select="Last" />,&#160;
  </xsl:otherwise>
</xsl:choose>
</xsl:for-each>.</p>
<p>
<xsl:value-of select="count(Accounts/Client[Years &gt; 7])" />
have been with us for more than 7 years!</p>

 </body></html>
</xsl:template>
</xsl:stylesheet>
