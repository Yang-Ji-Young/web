<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.expires = -1
'Response.Buffer = true
'Response.addHeader "Access-Control-Allow-Origin", "*"
%>
<!--#include virtual = "/master/inc/inc_bollog.asp"-->
<!--#include virtual = "/master/inc/func_bollog.asp"-->
<%

REMOTEIP = Request.ServerVariables("REMOTE_ADDR")
If Not (InStr(REMOTEIP, "222.239.11") > 0 Or InStr(REMOTEIP, "218.48.17.") > 0 Or InStr(REMOTEIP, "203.251.139.173") > 0) Then
	Response.write ""
	Response.End
End If


m_id		= Trim(request("mid")) &""
u_id		= Trim(request("uid")) &""
p_name	= Trim(request("pnm")) &""

'    "pname": "instagram",
'    "id": "7165462337",
'    "name": "_andspring_",
'    "token": "7165462337.2c7352f.2751f7f02ae84fa3b3e6299cd13a6a7a",
'    "refreshtoken": "",
'    "authtime": auth_t,
'    "image": "https://scontent.cdninstagram.com/vp/cc35564bbb1da60433fc09b06fcfe776/5D1BC815/t51.2885-19/s150x150/36984441_281645915749121_1886746263748083712_n.jpg?_nc_ht=scontent.cdninstagram.com"

srch = "member_id='"& m_id &"' and provider='"& p_name &"'"
If Not u_id = "" Then
	srch = srch & " and id='"& u_id &"'"
End If

ssql = "select id, name, image, token, refresh_token from members_auth where "& srch &" ;"
selrec = GetMulParamSQL(ssql)
If isarray(selrec) Then
	id						= Trim(selrec(0, 0)) &""
	name					= Trim(selrec(1, 0)) &""
	image					= Trim(selrec(2, 0)) &""
	token					= Trim(selrec(3, 0)) &""
	refresh_token = Trim(selrec(4, 0)) &""

	Call setEncCookie("ckmemid", m_id, true)
	Call setEncCookie("ckuname", name, true)
Else
	Response.write "auth failed!"
	Response.End
	
End If
%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>

	<script type="text/javascript" src="/js/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="/js/jquery.cookie.js"></script>

	<script type="text/javascript">
	 <!--
		// (new Date()).getTime();
		var auth_t = (new Date()).getTime();
		var user_info11 = {
			"login": true,
			"current": {
				"pname": "<%=p_name%>",
				"id": "<%=id%>",
				"name": "<%=name%>",
				"token": "<%=token%>",
				"refreshtoken": "<%=refresh_token%>",
				"authtime": auth_t,
				"image": "<%=image%>"
			},
			"providers": [
				{
					"pname": "<%=p_name%>",
					"id": "<%=id%>",
					"name": "<%=name%>",
					"token": "<%=token%>",
					"refreshtoken": "<%=refresh_token%>",
					"authtime": auth_t,
					"image": "<%=image%>"
				}
			]
		};

		$.cookie('user_info', JSON.stringify(user_info11), { path: '/' });

		location.href = '/';
				
	 //-->
	</script> 

 </head>
 <body>
  
 </body>
</html>

