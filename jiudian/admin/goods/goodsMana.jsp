<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function goodsDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/goods?type=goodsDel&id="+id;
                   a
               }
           }
           
           function goodsAdd()
           {
                 var url="<%=path %>/admin/goods/goodsAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }		
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/bg.jpg'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/images/tbg.gif">&nbsp;特色菜品&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="20%">名称</td>
					<td width="20%">描述</td>
					<td width="20%">图片</td>
					<td width="20%">价格</td>
					<td width="20%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.goodsList}" var="goods">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${goods.name1 }
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${goods.miaoshu }
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <div onmouseover = "over('<%=path %>/${goods.pic }')" onmouseout = "out()" style="cursor:hand;">
								查看图片
					   </div>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     ${goods.jiage }
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="goodsDel(${goods.id })" class="pn-loperator">删除</a>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			        <input type="button" value="添加" style="width: 80px;" onclick="goodsAdd()" />
			    </td>
			  </tr>
		    </table>
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
		</div>
	</body>
</html>
