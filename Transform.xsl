<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XLS/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/books">

        <html>
            <body>
                <h2>book list</h2>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Authors</th>
                        <th>Years</th>
                    </tr>
                    <xsl:for-each select="book">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="author"/>
                            </td>
                            <td>
                                <xsl:value-of select="year"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>