<!-- Sorting: xsl:sort -->
    attributes
    ◦ select        --> sorting by element or attribute
    ◦ order         --> ascending, descending
    ◦ case-order    --> specifies letter size priority, upper-first , lower-first 
    ◦ lang
    ◦ data-type     --> sorting letters or numbers (text, number)
    possibility of multiple sorting criteria

    xsl:sort
        ◦ xsl:for-each 
        ◦ xsl:apply-templates
    xsl:sort the first instruction in for-each !! IMPORTANTE !!
    <xsl:apply-templates >
        <xsl:sort select="wezel"/>
    </xsl:apply-templates>

    <xsl:for-each select="osoba">
        <xsl:sort select="@plec"/>      <!--  correct -->
        <xsl:sort select="nazwisko"/>   <!-- correct but it doesn't work: it is not in first position--> 
        <xsl:sort select="imie"/>
        <center>
            <xsl:choose>
                <xsl:when test="@plec='kobieta'">
                    <table class="kobieta" align="center"> 
                        <xsl:call-template name="tabelka"/>
                    </table>
                </xsl:when>
                <xsl:when test="@plec='mezczyzna'">
                    <table class="mezczyzna" align="center"> 
                        <xsl:call-template name="tabelka"/>
                    </table>
                </xsl:when>
            </xsl:choose>
        </center>
    </xsl:for-each>

