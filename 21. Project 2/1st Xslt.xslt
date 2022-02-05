<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

	<xsl:template match="/">

		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Hypertext hypermedia</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<link rel="stylesheet" href="style.css" />
			</head>
			<body>
				<xsl:variable name="Topic">Volleyball</xsl:variable>
				<div id="header">
					<header>
						<h1><xsl:value-of select="$Topic"/></h1>
					</header>
				</div>

				<!-- menu for moving within a page -->
				<xsl:call-template name="menu"/>

				<div id="content_field">
					<!-- 1 PARAGRAPH -->
					
					<xsl:apply-templates select="topic/section[@kind='introduction']"/>

					<xsl:apply-templates select="topic/section[@kind='short_rules']"/>

					<xsl:for-each select="topic/section/rules/rule">
						<xsl:sort select="." order="ascending"/>
						<xsl:number value="position()" format="1. "/>
						<xsl:value-of select="."/>
						<br/>
					</xsl:for-each>

					<!-- raster of photo -->
					<p>
						<xsl:apply-templates select="topic/raster/image"/>
					</p>

					<xsl:apply-templates select="topic/playerInformation"/>

				</div>
				
				<div id="footer">
					<xsl:variable name="Link">Useful Links: </xsl:variable>
					<br><xsl:value-of select="$Link"/><br/>						
					
						<xsl:for-each select="topic/links/link">
						<xsl:sort select="." order="ascending"/>
						<xsl:number value="position()" format="I. "/>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="@source"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</a>
						<br/>
					</xsl:for-each>
					</br>

					<p>
						Number of visitors today: <xsl:value-of select="format-number(topic/visitors,'#,##0')" /> <br/>
						Percentage of people who click the links: <xsl:value-of select="format-number(topic/visitors2, '##%')"/>		
					</p>

					<xsl:if test="topic/author">
						<p> <xsl:apply-templates select="topic/author"/> </p>
						 
						<p> 
							show concat:
							<xsl:value-of select="concat(topic/author/name,' ',topic/author/surname)"/>
						</p>
						
						<p>
							show substring:
							<xsl:value-of select="substring(123456789, 3, 3)"/>
						</p>
					</xsl:if>

					
				</div> 


			
			</body>
		</html>
	</xsl:template>

<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	<xsl:template name="menu">
		<nav id="menu">
			<ul>
				<li>
					<a href="history.html" target="_blank"> History </a>
					<ul>
						<li> <a href="history.html#Origins" target="_blank"> Origins </a></li>
						<li> <a href="history.html#Refinements" target="_blank"> Refinements and later developments </a></li>
						<li> <a href="history.html#Olympics" target="_blank">Volleyball in the Olympics </a> </li>
					</ul>
				</li>
				<li> <a href="rules.html" target="_blank"> Rules </a></li>
				<li> <a href="skills.html" target="_blank"> Skills </a></li>
			</ul>
		</nav>	
  	</xsl:template>

	<xsl:template match="section">
		<xsl:if test="keytopic">
			<h2> <xsl:value-of select="keytopic"/> </h2>
		</xsl:if>

		<xsl:apply-templates select="text"/>	
	</xsl:template>

	<xsl:template match="text">
	  	<p class="elegant">
			<xsl:value-of select="."/>
		</p>
	</xsl:template>

	<xsl:template match="image">
        <img class="raster">
            <xsl:attribute name="src">
                <xsl:value-of select="@source"/>
            </xsl:attribute>
        </img>
    </xsl:template>

	<xsl:template match="link">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="@source"/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </li>
    </xsl:template>

	<xsl:template match="rule">
		<ul>
			<li>
				<xsl:value-of select="."/>
			</li>
		</ul>
	</xsl:template>

	

	<xsl:template match="playerInformation">
        <table style="width:50%; border: 5px solid red">
            <tr>
				<th>Name</th> 
                <th>role</th>
				<th>dateOfBirth</th>
				<th>height</th>
				<th>debut</th>
            </tr> 

            <xsl:apply-templates select="player" mode="table"/>
        </table>
    </xsl:template>

	<xsl:template match="player" mode="table">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="role"/></td>
			<td><xsl:value-of select="dateOfBirth"/></td>
			<td><xsl:value-of select="height"/></td>

			<xsl:choose>
				<xsl:when test="debutWithClub">
					<td><xsl:value-of select="debutWithClub"/></td>
				</xsl:when>
				<xsl:when test="debutWithNationalTeam">
					<td><xsl:value-of select="debutWithNationalTeam"/></td>
				</xsl:when>
			</xsl:choose>
        </tr>
    </xsl:template>

	<xsl:template match="author">
		<xsl:variable name="O">Owner:</xsl:variable>
		<h4>
			<xsl:value-of select="$O"/>
			<xsl:value-of select="name"/>
			<xsl:value-of select="surname"/>
		</h4>
	</xsl:template>
</xsl:stylesheet>