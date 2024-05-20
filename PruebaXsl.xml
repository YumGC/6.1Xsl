<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Inventario de la tienda</title>
      </head>
      <body>
        <h1>Inventario de la tienda</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Cantidad</th>
          </tr>
          <xsl:for-each select="inventario/producto">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="cantidad"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
