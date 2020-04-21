<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output indent="yes"
				omit-xml-declaration="no"/>

	<xsl:template match="/BooksCanon">
		
	<xsl:apply-templates/>
	
	</xsl:template>

	<xsl:template match="booksCanon/book">
		<section class="books">
		<xsl:apply-templates/>
		</section>
	</xsl:template>
	
	<xsl:template match="booksCanon/book/title">
		<h2 class="bookTitle">
        <section>
        <xsl:apply-templates/>
		</section></h2>
	</xsl:template>

	<xsl:template match="booksCanon/book/edition">
		<p><b>Edition: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/authors/author">
		<p><b>Author: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/publisher">
		<p><b>Publisher: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/pages">
		<p><b>Pages: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/isbn">
		<p><b>ISBN: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/price">
		<p><b>Price: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/currency">
		<p><b>Currency: </b> <xsl:apply-templates/></p>
	</xsl:template>

	<xsl:template match="booksCanon/book/comments">
		<p><b>Comments: </b> <xsl:apply-templates/></p>
	</xsl:template>

</xsl:stylesheet>
