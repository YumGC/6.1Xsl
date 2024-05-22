<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
  <body>
    <h2>Inventario de Dispositivos</h2>
    <table border="1">
      <tr>
        <th>Marca</th>
        <th>Modelo</th>
        <th>URL Oficial</th>
        <th>Manual</th>
        <th>Imagen</th>
        <th>Tutoriales</th>
      </tr>
      <xsl:for-each select="inventario/dispositivo">
      <tr>
        <td><xsl:value-of select="marca"/></td>
        <td><xsl:value-of select="modelo"/></td>
        <td><a href="{url_oficial}"><xsl:value-of select="url_oficial"/></a></td>
        <td>
          <xsl:if test="manual">
            <a href="{manual}"><xsl:value-of select="manual"/></a>
          </xsl:if>
          <xsl:if test="not(manual)">
            N/A
          </xsl:if>
        </td>
        <td><img src="{imagen}" alt="{modelo}" width="100"/></td>
        <td>
          <ul>
            <xsl:for-each select="tutoriales/tutorial">
              <li><a href="{url}"><xsl:value-of select="titulo"/></a></li>
            </xsl:for-each>
          </ul>
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
