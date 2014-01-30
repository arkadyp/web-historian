<!--
<TABLE>
      <TR>
           <TD>
                <B>Server Varriable</B>
           </TD>
           <TD>
                <B>Value</B>
           </TD>
      </TR>

      
      <TR>
           <TD>
                ALL_HTTP
           </TD>
           <TD>
                HTTP_CONNECTION:Keep-Alive
HTTP_CONTENT_LENGTH:0
HTTP_HOST:www.hope.com
HTTP_REVERSE_VIA:PROD-ISA-N2

           </TD>
      </TR>
      
      <TR>
           <TD>
                ALL_RAW
           </TD>
           <TD>
                Connection: Keep-Alive
Content-Length: 0
Host: www.hope.com
Reverse-Via: PROD-ISA-N2

           </TD>
      </TR>
      
      <TR>
           <TD>
                APPL_MD_PATH
           </TD>
           <TD>
                /LM/W3SVC/142977556/ROOT
           </TD>
      </TR>
      
      <TR>
           <TD>
                APPL_PHYSICAL_PATH
           </TD>
           <TD>
                D:\INETPUB\Mirrors\
           </TD>
      </TR>
      
      <TR>
           <TD>
                AUTH_PASSWORD
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                AUTH_TYPE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                AUTH_USER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_COOKIE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_FLAGS
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_ISSUER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_KEYSIZE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_SECRETKEYSIZE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_SERIALNUMBER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_SERVER_ISSUER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_SERVER_SUBJECT
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CERT_SUBJECT
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                CONTENT_LENGTH
           </TD>
           <TD>
                0
           </TD>
      </TR>
      
      <TR>
           <TD>
                CONTENT_TYPE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                GATEWAY_INTERFACE
           </TD>
           <TD>
                CGI/1.1
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTPS
           </TD>
           <TD>
                off
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTPS_KEYSIZE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTPS_SECRETKEYSIZE
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTPS_SERVER_ISSUER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTPS_SERVER_SUBJECT
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                INSTANCE_ID
           </TD>
           <TD>
                142977556
           </TD>
      </TR>
      
      <TR>
           <TD>
                INSTANCE_META_PATH
           </TD>
           <TD>
                /LM/W3SVC/142977556
           </TD>
      </TR>
      
      <TR>
           <TD>
                LOCAL_ADDR
           </TD>
           <TD>
                10.15.71.19
           </TD>
      </TR>
      
      <TR>
           <TD>
                LOGON_USER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                PATH_INFO
           </TD>
           <TD>
                /index.asp
           </TD>
      </TR>
      
      <TR>
           <TD>
                PATH_TRANSLATED
           </TD>
           <TD>
                D:\INETPUB\Mirrors\index.asp
           </TD>
      </TR>
      
      <TR>
           <TD>
                QUERY_STRING
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                REMOTE_ADDR
           </TD>
           <TD>
                10.14.1.223
           </TD>
      </TR>
      
      <TR>
           <TD>
                REMOTE_HOST
           </TD>
           <TD>
                10.14.1.223
           </TD>
      </TR>
      
      <TR>
           <TD>
                REMOTE_USER
           </TD>
           <TD>
                
           </TD>
      </TR>
      
      <TR>
           <TD>
                REQUEST_METHOD
           </TD>
           <TD>
                GET
           </TD>
      </TR>
      
      <TR>
           <TD>
                SCRIPT_NAME
           </TD>
           <TD>
                /index.asp
           </TD>
      </TR>
      
      <TR>
           <TD>
                SERVER_NAME
           </TD>
           <TD>
                www.hope.com
           </TD>
      </TR>
      
      <TR>
           <TD>
                SERVER_PORT
           </TD>
           <TD>
                80
           </TD>
      </TR>
      
      <TR>
           <TD>
                SERVER_PORT_SECURE
           </TD>
           <TD>
                0
           </TD>
      </TR>
      
      <TR>
           <TD>
                SERVER_PROTOCOL
           </TD>
           <TD>
                HTTP/1.1
           </TD>
      </TR>
      
      <TR>
           <TD>
                SERVER_SOFTWARE
           </TD>
           <TD>
                Microsoft-IIS/7.5
           </TD>
      </TR>
      
      <TR>
           <TD>
                URL
           </TD>
           <TD>
                /index.asp
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTP_CONNECTION
           </TD>
           <TD>
                Keep-Alive
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTP_CONTENT_LENGTH
           </TD>
           <TD>
                0
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTP_HOST
           </TD>
           <TD>
                www.hope.com
           </TD>
      </TR>
      
      <TR>
           <TD>
                HTTP_REVERSE_VIA
           </TD>
           <TD>
                PROD-ISA-N2
           </TD>
      </TR>
      
</TABLE>
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
 <head>
  	<meta http-equiv="Content-Type" content="text/html">
  	<title>www.hope.com - Domain Owned by MicroStrategy</title>
	<meta HTTP-EQUIV="expires" CONTENT="0">
	<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
	<meta name="keywords" content="business intelligence, business intelligence software, business intelligence solutions, data warehousing, OLAP, OLAP reporting tools, data mining, reporting tools, ROLAP, decision support, decision analysis tools, decision support tools, Relational OLAP, DSS, business analysis, Online Analytical Processing, ad hoc query, reporting, advanced analysis, report delivery, proactive alerting, closed-loop bi, portals, extranets, application integration, embedded intelligence, query database, enterprise reporting, query tools, information delivery, CRM, personalization, software, MSTR, MicroStrategy, Micro Strategy, Microstrategies, Customer Analysis, CRM Applications, microstrategy 7,rolap, molap, holap, supply chain analysis, supply chain metrics, financial analysis, e-business, web, web reporting, web analysis">
	<link rel="stylesheet" type="text/css" href="/Styles/StyleSheet.css">
	</head>
 <body leftmargin="0" topmargin="0" marginheight="0" marginwidth="0" scroll="auto" bgcolor="#FFFFFF" text="#000000" link="#333333" vlink="#333333" alink="#CC0000" ahover="#CC0000">
<div style="width: 500px; padding: 20 20 20 20; text-align: justify;"><a href="http://www.microstrategy.com/?CID=Ref_www.hope.com"><img src="graphics/MSTRLogo.gif" width="185" height="54" alt="Best in Business Intelligence" border="0"></a><br><br>
This domain is owned by MicroStrategy, Inc.<br><br>
 
MicroStrategy is a global leader in Business Intelligence. We have over 18 years experience helping more than 2,300 customers to gain critical insights from their data. Our Business Intelligence platform, MicroStrategy 8, gives businesses solutions to all of their query, reporting and advanced analytical needs, and distributes insight to users via web, wireless and voice.<br>
<br>
 
Learn more about MicroStrategy at <a href="http://www.microstrategy.com/?CID=Ref_www.hope.com">www.microstrategy.com</a>.<br><br>
 
Please contact <a href="mailto:dns_admin@microstrategy.com?Subject=Domain%20Name%20Inquiry%20-%20www.hope.com">dns_admin@microstrategy.com</a> for domain availability inquires.<br><br><br>






<span class="subcontent"><a href="http://www.microstrategy.com/Copyright.asp?CID=Ref_www.hope.com">Copyright &copy; 2014</a> MicroStrategy, Inc. All Rights Reserved.</span><br><br> 
</div>
 </body>
</html>