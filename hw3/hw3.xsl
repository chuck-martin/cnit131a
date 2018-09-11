<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">

<html lang="en">
  <head>
    <title>List of Clients</title>
    <link rel="stylesheet" type="text/css" href="hw3.css" />
  </head>
  <body>
   <h1>List of Clients</h1>
   <table><tr><th>Name</th>
   <!-- <th>Address</th> -->
   <th>Phone</th><th>Email</th><th>Account Total</th></tr>

    <xsl:for-each select="Accounts/Client">
     <tr><td><xsl:value-of select="Name/First"/>&#160;<xsl:value-of select="Name/Last"/></td>
     <!-- <td><xsl:value-of select="Address/Street"/><br />
     <xsl:value-of select="Address/City"/>, <xsl:value-of select="Address/State"/>, <xsl:value-of select="Address/Zip"/></td> -->
     <td><xsl:value-of select="Phone"/></td>
     <td><xsl:value-of select="E-mail"/></td>
     <xsl:choose>
       <xsl:when test="Account_Total &gt; 80000">
         <td class="right"><xsl:value-of select="Account_Total"/></td>
       </xsl:when>
       <xsl:otherwise>
     <td class="right red"><xsl:value-of select="Account_Total"/></td>
   </xsl:otherwise>
   </xsl:choose>
    </tr>
    </xsl:for-each>

   </table>
 </body></html>
</xsl:template>
</xsl:stylesheet>
