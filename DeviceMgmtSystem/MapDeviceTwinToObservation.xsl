<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:s0="http://MedicalDeviceSchemas.DeviceTwin" xmlns:ns0="http://hl7.org/fhir" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ns2="http://www.w3.org/1999/xhtml" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:DeviceTwin" />
  </xsl:template>
  <xsl:template match="/s0:DeviceTwin">
    <xsl:variable name="var:v1" select="userCSharp:StringTrimLeft(&quot;generated&quot;)" />
    <xsl:variable name="var:v2" select="userCSharp:StringTrimLeft(&quot;http://loinc.org&quot;)" />
    <xsl:variable name="var:v3" select="userCSharp:StringTrimLeft(&quot;15074-8&quot;)" />
    <xsl:variable name="var:v4" select="userCSharp:StringTrimLeft(&quot;Glucose [Moles/volume] in Blood&quot;)" />
    <xsl:variable name="var:v5" select="userCSharp:StringConcat(&quot;Patient/&quot; , string(tags/patient/id/text()))" />
    <xsl:variable name="var:v6" select="userCSharp:StringConcat(string(tags/patient/firstname/text()) , &quot; &quot; , string(tags/patient/lastname/text()))" />
    <xsl:variable name="var:v7" select="userCSharp:DateCurrentDate()" />
    <xsl:variable name="var:v8" select="userCSharp:StringTrimLeft(&quot;6.3&quot;)" />
    <xsl:variable name="var:v9" select="userCSharp:StringTrimLeft(&quot;mmol/l&quot;)" />
    <xsl:variable name="var:v10" select="userCSharp:StringTrimLeft(&quot;http://unitsofmeasure.org&quot;)" />
    <xsl:variable name="var:v11" select="userCSharp:StringTrimLeft(&quot;mmol/L&quot;)" />
    <ns0:Observation>
      <ns0:id>
        <xsl:if test="deviceId">
          <xsl:attribute name="value">
            <xsl:value-of select="deviceId/text()" />
          </xsl:attribute>
        </xsl:if>
      </ns0:id>
      <ns0:text>
        <ns0:status>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v1" />
          </xsl:attribute>
        </ns0:status>
        <ns2:div xmlns="http://www.w3.org/1999/xhtml">
          <p>
            <b> Generated Narrative with Details</b>
          </p>
          <p>
            <b> id</b> : f001
          </p>
          <p>
            <b> identifier</b> : 6323 (OFFICIAL)
          </p>
          <p>
            <b> status</b> : final
          </p>
          <p>
            <b> code</b> : Glucose [Moles/volume] in Blood <span>
              (Details : {LOINC code '15074-8' = 'Glucose [Moles/volume] in Blood', given as 'Glucose
              [Moles/volume] in Blood'})
            </span>
          </p>
          <p>
            <b> subject</b> : <a> P. van de Heuvel</a>
          </p>
          <p>
            <b> effective</b> : 02/04/2013 9:30:10 AM --&gt; (ongoing)
          </p>
          <p>
            <b> issued</b> : 03/04/2013 3:30:10 PM
          </p>
          <p>
            <b> performer</b> : <a> A. Langeveld</a>
          </p>
          <p>
            <b> value</b> : 6.3 mmol/l<span>  (Details: UCUM code mmol/L = 'mmol/L')</span>
          </p>
          <p>
            <b> interpretation</b> : High <span>
              (Details : {http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation code 'H'
              = 'High', given as 'High'})
            </span>
          </p>
          <h3> ReferenceRanges</h3>
          <table>
            <tr>
              <td> -</td>
              <td>
                <b> Low</b>
              </td>
              <td>
                <b> High</b>
              </td>
            </tr>
            <tr>
              <td> *</td>
              <td>
                3.1 mmol/l<span>  (Details: UCUM code mmol/L = 'mmol/L')</span>
              </td>
              <td>
                6.2 mmol/l<span>  (Details: UCUM code mmol/L = 'mmol/L')</span>
              </td>
            </tr>
          </table>
        </ns2:div>
      </ns0:text>
      <ns0:code>
        <ns0:coding>
          <ns0:system>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v2" />
            </xsl:attribute>
          </ns0:system>
          <ns0:code>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v3" />
            </xsl:attribute>
          </ns0:code>
          <ns0:display>
            <xsl:attribute name="value">
              <xsl:value-of select="$var:v4" />
            </xsl:attribute>
          </ns0:display>
        </ns0:coding>
      </ns0:code>
      <ns0:subject>
        <ns0:reference>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v5" />
          </xsl:attribute>
        </ns0:reference>
        <ns0:display>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v6" />
          </xsl:attribute>
        </ns0:display>
      </ns0:subject>
      <ns0:effectivePeriod>
        <ns0:start>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v7" />
          </xsl:attribute>
        </ns0:start>
      </ns0:effectivePeriod>
      <ns0:valueQuantity>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'ns0:Quantity'" />
        </xsl:attribute>
        <ns0:value>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v8" />
          </xsl:attribute>
        </ns0:value>
        <ns0:unit>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v9" />
          </xsl:attribute>
        </ns0:unit>
        <ns0:system>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v10" />
          </xsl:attribute>
        </ns0:system>
        <ns0:code>
          <xsl:attribute name="value">
            <xsl:value-of select="$var:v11" />
          </xsl:attribute>
        </ns0:code>
      </ns0:valueQuantity>
    </ns0:Observation>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp">
    <![CDATA[
public string StringTrimLeft(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.TrimStart(null);
}

public string StringConcat(string param0, string param1)
{
   return param0 + param1;
}

public string StringConcat(string param0, string param1, string param2)
{
   return param0 + param1 + param2;
}

public string DateCurrentDate()
{
	DateTime dt = DateTime.Now;
	return dt.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
}

]]>
  </msxsl:script>
</xsl:stylesheet>