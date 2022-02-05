<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>  
	</xsl:template>

	<!-- CHANGE THE NAME OF 4 ELEMENTS -->
	<xsl:template match="playerInformation">
		<playerInformationNEW>
			<xsl:apply-templates />
		</playerInformationNEW>
	</xsl:template>	

	<!-- 
	<xsl:template match="player">
		<xsl:element name="playerNEW">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>	
--> 

	<xsl:template match="surname">
		<xsl:element name="surnameNEW">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>	

	<xsl:template match="name">
		<xsl:element name="nameNEW">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>	

	<xsl:template match="role">
		<xsl:element name="roleNEW">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>	

	<xsl:template match="menu">
		<menuaftercopyof>
			<xsl:copy-of select="link"/>
		</menuaftercopyof>
	</xsl:template>

	

	<!-- CHENGE THE VALUE OF A ATTRIBUTE -->
	<xsl:template match="@resolution"> <!-- @ matches on attributes, possible to restrict! -->
		<xsl:attribute name="{name()}">   <!-- creates a new attribute with the same name -->
			<xsl:text>NEW_RESOLUTION</xsl:text>   <!-- variable statement to get your desired value -->
		</xsl:attribute>
	</xsl:template>

	<!-- parte da sistemare -->

	<xsl:variable name="Var">Visitors</xsl:variable>

	<xsl:template match="visitors">
		<xsl:copy>
			<xsl:element name="{$Var}">
				<xsl:text>Value</xsl:text>
			</xsl:element>
		</xsl:copy>
	</xsl:template>



</xsl:stylesheet>