<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Inventario de Dispositivos del Aula Ateca</h2>
    <table border="1">
      <tr bgcolor="#f2f2f2">
        <th>Marca</th>
        <th>Modelo</th>
        <th>URL Oficial</th>
        <th>Manual</th>
        <th>Imagen</th>
        <th>Tutoriales</th>
      </tr>
      <xsl:for-each select="catalog/cd">
      <tr>
        <td><xsl:value-of select="inventario/dispositivo/marca" /></td>
        <td><xsl:value-of select="modelo" /></td>
        <td><xsl:value-of select="url_oficial" /></td>
        <td><xsl:value-of select="manual" /></td>
        <td><xsl:value-of select="imagen" /></td>
        <td><xsl:value-of select="titulo" /></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
