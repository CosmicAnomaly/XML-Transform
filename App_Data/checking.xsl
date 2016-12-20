<?xml version="1.0" ?>
<!--
   New Perspectives on XML
   Tutorial 6
   Case Problem 3

   Homestead School Checking Account XSLT Style Sheet
   Author: Linda Sanchez
   Date:   3/1/2008

   Filename:         checks.xsl
   Supporting Files: checking.dtd
   
  Modified by Bryon Steinwand to produce HTML output
  HTML, HEAD, and BODY tags were not output because the output will be 
  generated into an existing page that contains HTML tags.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" indent="yes" doctype-system="checking.dtd" />

  <xsl:template match="/">
        <xsl:apply-templates select='account/payment[@type="check"]'>
          <xsl:sort select="amount" data-type="number" order="descending" />
        </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="payment">
    <style>
      table {
      border: 1px solid black;
      }
      th, td {
      padding: 15px;
      }
    </style>
    <table>  
      <tr>
        <th>Check Number</th>
        <th>Category</th>
        <th>Amount</th>
        <th>To</th>
        <th>Date</th>
        <th>Description</th>    
      </tr>
    <xsl:for-each select=".">
      <tr>
      <td><xsl:value-of select="@checknum" /></td>
      <td> <xsl:value-of select="to/@category" /></td>
      <td> <xsl:value-of select="amount" /></td>
      <td> <xsl:value-of select="to" /></td>
      <td> <xsl:value-of select="date" /></td>
      <td> <xsl:value-of select="description" /></td>
      </tr>
    </xsl:for-each>
      
    </table>
  </xsl:template>

</xsl:stylesheet>
