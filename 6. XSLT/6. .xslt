<!-- Structure of the XSLT document -->
    XML declaration

    xsl:stylesheet tag
    ◦ xmlns:xsl attribute: URI for XSLT namespace
    ◦ xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    ◦ version
    <?xml version="1.0"?>
    <xsl:stylesheet xmlns:xsl=“http://www.w3.org/1999/XSL/Transform” version="1.0">
    …templates and transformation rules go here …
    </xsl:stylesheet>

<!-- first part --> 
    xsl:template            defines the template
    xsl:variable            defines variables
    xsl:output              determines the type of result document
    <!-- -->
    xsl:attribute-set           it defines a set of attributes
    xsl:decimal-format      defines how the numbers are displayed
    xsl:import              import style sheets
    xsl:include             include style sheets
    xsl:key                 key
    xsl:namespace-alias     indicates the namespace in the resulting document
    xsl:param               allows you to create parameters
    xsl:preserve-space      retains white characters in the specified element
    xsl:strip-space         removes whitespace from the specified element

<!-- Second part: --> 
    xsl: apply-templates
    xsl: attribute
    xsl:call-template
    xsl:choose
    xsl:copy-of
    xsl:for-each
    xsl:if
    xsl: number
    xsl:sort
    xsl:value-of
    xsl:when
    <!-- -->
    xsl:comment
    xsl:copy
    xsl:element
    xsl:fallback
    xsl:message
    xsl: otherwise
    xsl:processing-instruction
    xsl:text
    xsl:with-param
    xsl:apply-imports