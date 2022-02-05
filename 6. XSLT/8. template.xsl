<!--  xsl:template -->
    A template contains rules to apply when a specified node is matched.
    The template can be called by matching the node of the XML document 
    tree to the match attribute 
    Nodes are matched and not selected, they are processed as they are 
    encountered by the XML processor

    ◦ match: defines the transformation for the nodes described by this attribute
        <xsl:template match="...">...</xsl:template>
    ◦ name: name of the element on which template is to be applied (and gives the template a name)
        <xsl:template name="...">...</xsl:template>
    ◦ mode: allows element to be processed multiple times to produce a different result each time
    ◦ priority: priority number of a templete (if two template match, it will be use the one with the higher priority) [optional]

<!-- EXAMPLE: -->
    hello.xsl:
    <?xml version="1.0"?>
    <xsl:stylesheet
        xmlns:xsl=“http://www.w3.org/1999/XSL/Transform” version="1.0">
        <xsl:output method="html" />

        <xsl:template match="/">    <!-- root element -->
            <b><xsl:value-of select="hi"/></b> <!-- select value hi -->
        </xsl:template>
    </xsl:stylesheet>

    hello.xml:
    <?xml version="1.0"?>
    <hi>Hello XSLT!</hi> <!-- hi element -->

    OUTPUT:  Hello XSLT!

<!-- -->
    XSLT: TEMPLATE:
    - xslt is A series of rules (called template rules):
        - each rile is a sequence of XSLT commands
        - each command is an XML element with attributes
    - A rule is executed when it:
        - matched some condition
        - is called by name

<!-- xsl:apply-templates (match) -->
    template with match attribute
    ◦ template definition:    <xsl:template match="node">...</xsl:template>
    ◦ using template:
        ◦ all of the children of the current node:           <xsl:apply-templates/>
        ◦ selecting the nodes to which the template is used  <xsl:apply-templates select="..." />


<!--  xsl:call-template (name) -->
    template with name attribute
    ◦ template definition:  <xsl:template name="dosomething">...</xsl:template>
    ◦ using template:       <xsl:call-template name=" dosomething "/>
    looks like a traditional programming language
    we have full control over the way of execution the code

<!-- same rules for different nodes: OR -->
    <!-- 1 version: -->
    <xsl:template match="mammals"> <h1><xsl:apply-templates/></h1> </xsl:template> 
    ... 
    <xsl:template match="birds"> 
    <h1><xsl:apply-templates/></h1> </xsl:template> 

    <!-- 2 version -->
    <xsl:template match="mammals | birds"> <h1><xsl:apply-templates/></h1> 
    </xsl:template> 

<!--  BUILT-IN FUNCTION -->
    If no rule matches the node? built-in template:
        • for document root and elements: apply templates to children 
        • for text nodes and attributes: copy text value to result 
        • for comments and processing instructions: do nothing

<!-- DIFFERERENT RESULT from same nodes -->
    template with mode: possibility to process the same set of nodes many times
        <xsl:template match="root">
            <xsl:apply-templates mode="tryb1"/>
            <xsl:apply-templates mode="tryb2"/>
        </xsl:template>

        <xsl:template match="elem" mode="tryb1">
            <xsl:text>tryb1:</xsl:text>
            <xsl:value-of select="."/>
        </xsl:template>
        <xsl:template match="elem" mode="tryb2">
            <xsl:text>tryb2:</xsl:text>
            <xsl:value-of select="."/>
        </xsl:template>

<!-- Resolving matching rules conflicts --> 
    Which template will be used?
        there is no template for the given context:                                 --> built-in template will be used
        there is one template for the given context:                                --> this template will be used
        there are 2 templates for the given context:                                --> a more specific template will be applied (cioè quello con il percorso più specifico)
        there are 2 templates for the given context, both equally specific:         --> a template with higher priority will be applied
        there are 2 templates: the same context, priority, both equally specific:   --> a template that appears later will be applied