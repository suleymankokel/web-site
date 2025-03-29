<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Site Haritası</title>
        <style>
          body { font-family: Arial, sans-serif; background-color: #f4f7fa; margin: 0; padding: 20px; }
          h1 { color: #333; text-align: center; margin-bottom: 20px; font-size: 28px; }
          table { width: 80%; margin: 0 auto; border-collapse: collapse; background-color: #fff; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 8px; overflow: hidden; }
          th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #e0e0e0; }
          th { background-color: #4a90e2; color: white; font-weight: bold; text-transform: uppercase; }
          td a { color: #2c3e50; text-decoration: none; transition: color 0.3s ease; }
          td a:hover { color: #e74c3c; text-decoration: underline; }
          tr:nth-child(even) { background-color: #f9f9f9; }
          tr:hover { background-color: #eef2f7; }
        </style>
      </head>
      <body>
        <h1>Site Haritası</h1>
        <table>
          <tr>
            <th>URL</th>
          </tr>
          <xsl:for-each select="urlset/url">
            <tr>
              <td>
                <a href="{loc}">
                  <xsl:value-of select="loc"/>
                </a>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
