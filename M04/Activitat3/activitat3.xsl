<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <!-- Table con borde -->
                <table border="1">
                    <!-- Heading con color azul -->
                    <tr bgcolor="#2596be">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Country</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Year</th>
                    </tr>
                    <!-- Seleccionar todos los cd -->
                    <xsl:for-each select="catalog/cd">
                        <!-- Ordenar por año -->
                        <xsl:sort select="year"/>
                        <!-- Mostrar filas que tengan el año superior a 1980 -->
                        <xsl:if test="year > 1980">
                            <tr>
                                <td>
                                    <xsl:value-of select="title"/>
                                </td>
                                <td>
                                    <xsl:value-of select="artist"/>
                                </td>
                                <td>
                                    <xsl:value-of select="country"/>
                                </td>
                                <td>
                                    <xsl:value-of select="company"/>
                                </td>
                                <td>
                                    <xsl:value-of select="price"/>
                                </td>
                                <td>
                                    <xsl:value-of select="year"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>