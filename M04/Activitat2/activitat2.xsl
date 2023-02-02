<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <!-- Table con borde -->
                <table border="1">
                    <!-- Heading color verde -->
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                    </tr>
                    <!-- Seleccionar todos los cd -->
                    <xsl:for-each select="catalog/cd">
                        <tr>
                            <td>
                                <!-- Sacar el valor de title del xml -->
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <!-- Sacar el valor de artist del xml -->
                                <xsl:value-of select="artist"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>