<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">

    <h1 style="text-align: center;"><strong>MicroBlogging Posts</strong></h1>
    <hr></hr>

       <!--XPATH expression to select the first blog post-->
       <xsl:variable name="FPost" select="/blog/posts/post[1]/source"/>
       <xsl:variable name="PContent" select="/blog/posts/post[1]/content"/>
       <h3 style="padding: 3px;"><xsl:value-of select="$FPost"/></h3>
       <p style="padding: 3px;"><xsl:value-of select="$PContent"/></p>

       <!--XPATH expression to select the second blog post-->
       <xsl:variable name="SPost" select="/blog/posts/post[2]/source"/>
       <xsl:variable name="SCPost" select="/blog/posts/post[2]/content"/>
       <h3 style="padding: 3px;"><xsl:value-of select="$SPost"/></h3>
       <p style="padding: 3px"><xsl:value-of select="$SCPost"/></p>

       <!--XPATH expression to select the third blog post-->
       <xsl:variable name="TPost" select="/blog/posts/post[3]/source"/>
       <xsl:variable name="TCPost" select="/blog/posts/post[3]/content"/>
       <h3 style="padding: 3px;"><xsl:value-of select="$TPost"/></h3>
       <p style="padding: 3px;"><xsl:value-of select="$TCPost"/></p>
        
    </xsl:template>

    <xsl:template match="post">
        <div>
            <h4><xsl:value-of select="source"/></h4>
            <p><xsl:value-of select="content"/></p>
            <p><i><xsl:value-of select="timestamp"/></i></p>
        </div>
    </xsl:template>
</xsl:stylesheet>
