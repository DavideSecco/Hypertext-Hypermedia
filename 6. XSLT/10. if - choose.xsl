<!-- xsl:if -->
    xsl:if:
        ◦ test
    no else 

    <xsl:if test="gender='woman‘ ">
        <font class="napis">Wife</font>
    </xsl:if>

    <xsl:if test="gender='man‘ ">
        <font class="napis">Husband</font>
    </xsl:if>

<!-- xsl:choose : conditional processing -->
    ◦ xsl:when : determines the condition
        ◦ test
    ◦ xsl:otherwise : optional, final instructions, used if no condition satisfied
    ◦ only first branch with satisfied condition processed.

    <xsl:choose>
        <xsl:when test="@gender='woman‘ ">
            <img src="bk-female.png" alt="woman"/>
        </xsl:when>
        <xsl:when test="@ gender='man‘ ">
            <img src="bk-male.png" alt="man"/>
        </xsl:when>
    </xsl:choose>

    <xsl:choose>
        <xsl:when test="position()=first()">
            Do something for last element
        </xsl:when>
        <xsl:when test="position()=last()">
            Do something for last element 
        </xsl:when>
        <xsl:otherwise>
            Do something for other elements
        </xsl:otherwise>
    </xsl:choose>