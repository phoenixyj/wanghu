<!--#include file="Inc/Config.asp" -->
<!--#include file="Inc/md5VB.asp" -->
<%
  dim id
  id=replace(trim(request.QueryString("id")),"'","")
  if id="" or isnumeric(id)=false then
     response.Write("<script language='javascript'>alert('非法操作！');window.close();</script>")
	 response.End()
  end if
%>
<%CxGame.DbConn("News")%>
<%
  dim newstitle,newsinfo,newsdate
  set rs=conn.execute("select top 1 C_title,C_content,C_time from C_content where C_id="&id)
  if not rs.eof then
     newstitle=rs(0)
	 newsinfo=rs(1)
	 newsdate=rs(2)
  end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #56cce6;
}
-->
</style>
<link href="images/css.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><!--#include file="top.asp"--></td>
  </tr>
</table>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="6" valign="top"><img src="images/L_33.jpg" width="6" height="384"></td>
    <td width="207" align="center" valign="top" bgcolor="#56CCE6"><table width="207" border="0" cellpadding="0" cellspacing="0" background="images/left_bj.jpg">
        <tr>
          <td align="center"><!--#include file="left.asp"--></td>
        </tr>
      </table></td>
    <td width="701" valign="top"><table width="699" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="39" valign="bottom" background="images/l_35.jpg"><table width="190" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="190" height="37" align="right" valign="bottom" class="k_16">多彩参赛报名</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="1198" align="center" valign="top" background="images/l_36.jpg"><br>
          <table width="600" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD">
          <form action="ADD_match.asp" method="post" name="theform" onSubmit="return check()">
            <tr bgcolor="#FFFFFF">
              <td width="149" height="30" align="center">用 户 名：</td>
              <td width="451" height="30" align="left"><input type="text" name="username">
                *</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">真实姓名：</td>
              <td height="30" align="left"><input name="U_name" type="text" id="U_name">
                *</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">证件号码：</td>
              <td height="30" align="left"><input name="IDCard" type="text" id="IDCard">
                *</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">年&nbsp;&nbsp;&nbsp; 龄：</td>
              <td height="30" align="left"><input name="Age" type="text" id="Age" size="6"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">职&nbsp;&nbsp;&nbsp; 业：</td>
              <td height="30" align="left"><input name="Profession" type="text" id="Profession"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">电话号码：</td>
              <td height="30" align="left"><input name="PhoneNo" type="text" id="PhoneNo">
                *</td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" align="center">联系地址：</td>
              <td height="30" align="left"><input name="Address" type="text" id="Address" size="50">
                *
          <input type="hidden" value="<%=id%>" name="C_id"></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="30" colspan="2" align="center"><input name="submit" type="submit" value="确认提交">
                &nbsp;
                <input name="submit" type="reset" value="重新填写"></td>
            </tr>
          </form>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/l_43.jpg" width="699" height="23"></td>
      </tr>
    </table></td>
    <td width="88" align="center" valign="top"><!--#include file="Right.asp"--></td>
  </tr>
</table>
<!--#include file="copy.asp"-->
<script language="javascript">
function check(){
  if(theform.username.value==""){
  alert("请填写好用户名");
  theform.username.focus();
  return false
  }
  if(theform.U_name.value==""){
  alert("请填写好真实姓名");
  theform.U_name.focus();
  return false
  }
  if(theform.IDCard.value==""){
  alert("请填写好证件号码");
  theform.IDCard.focus();
  return false
  }
  if(theform.PhoneNo.value==""){
  alert("请填写好电话号码");
  theform.PhoneNo.focus();
  return false
  }
  if(theform.Address.value==""){
  alert("请填写好家庭地址");
  theform.Address.focus();
  return false
  }  
}
</script>
</body>
</html>
 