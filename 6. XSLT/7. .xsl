<!-- xsl:output -->
    attributes
    ◦ method defines the output format: html, xml, text
    ◦ encoding, version, ...
    default method: xml

<!-- xsl:value-of -->
    ◦ select (attributo obbligatorio)
        ◦ determines the node from which we want to get the information
        ◦ the attribute contains an XPath expression or XSLT function
    xsl:value-of    --> only first node from set (prende il valore solo del primo nodo di un insieme!
    , abbiamo quindi solo un informazione)
    <xsl:value-of select="node"/>
    <xsl:value-of select="."/>




    
