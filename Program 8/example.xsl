<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2> My Books collection</h2>
        <table border="1">
          <tr bgcolor="blue">
            <th align="center" bgcolor="red" >title</th>
            <th align="left" style="font-weight: bold; TEXT-TRANSFORM: UPPERCASE;">author</th>
            <th align="left">year</th>
            <th align="left">price</th>
          </tr>
          <xsl:for-each select="bookstore/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td style="font-weight: bold; TEXT-TRANSFORM: UPPERCASE;" bgcolor="blue"><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
