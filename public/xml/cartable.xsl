<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output indent="yes"
				omit-xml-declaration="no"/>

    <xsl:template match="/cars">
        <div>
			<table> 
                <tr class="tablehead"> 
                    <th>Manufactorer</th> 
                    <th>Model</th> 
                    <th>Year</th> 
                    <th>KMs</th> 
                    <th>Color</th>
                    <th>Price</th>
                    <th>Buyback</th>  
                </tr> 
				
                <xsl:for-each select="/cars/car">
                <xsl:sort select="@manufacturer"/>
                    <tr class="tablebody">
                        <td><xsl:value-of select="@manufacturer"/></td>
                        <td><xsl:value-of select="@model"/></td>
                        <td><xsl:value-of select="@year"/></td>
                        <td><xsl:value-of select="meter"/></td>
                        <td><xsl:attribute name="bgcolor"><xsl:value-of select="color"/></xsl:attribute></td>
                        <td><xsl:value-of select="price"/></td>
                        <td class="buyback">
                            <xsl:choose>
                                <xsl:when test="dealersecurity[@buyback='yes']">&#10003;</xsl:when>
                                <xsl:when test="dealersecurity[@buyback='no']">&#10005;</xsl:when>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
		</div>
   </xsl:template>  
</xsl:stylesheet>
            
