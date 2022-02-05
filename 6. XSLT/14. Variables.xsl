<!-- Variables -->
    xsl:variable
    definition (2 possibility):
        ◦<xsl:variable name="VarName">value</xsl:variable>
        ◦<xsl:variable name="VarName" select ="’value’"/>
    reference to variable
    ◦<xsl:value-of select=”$VarName”/>

    local:
        <xsl:template name="...">
            <xsl:variable name="...">...</xsl:variable>
        </xsl:template>
    global:
        <xsl:stylesheet ...>
        <xsl:variable name="...">...</xsl:variable>
        ...
        </xsl: stylesheet >

<!-- Constant (name given to a certain value) -->
their values can not be modified (read only)
advantages of variables
    ◦ they make reading the code easier
        ◦ complex expression saved as a variable
        ◦ the ability to break complex expressions into parts
    ◦ reuse
        ◦ performance enhancement especially for complex expressions that result in a fragment of the tree
    ◦ saving the value of nodes that are currently unavailable

<!-- simple and complex -->
    simple
        ◦ they contain single values
        ◦ usually used to insert the same values in many places in a document
    complex
        ◦ they contain sets of nodes and tree fragments
    