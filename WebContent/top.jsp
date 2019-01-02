<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="control.Show_HistoryController" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
//アクセス時
window.onload = function(){
	if(sessionStorage.getItem('access3') == null){
		sessionStorage.setItem('access3','1');
		document.open1.submit();
	}else{
		//アクセス済み
	}
}
//①のLinkClick
function Link1Open(){
	document.my_open.submit();
	return true;
}
//②のLinkClick
function Link2Open(){
	document.my_open2.submit();
	return true;
}
</script>
	<link rel="stylesheet" href="top.css">
    <meta charset="UTF-8">
    <title>タイトル</title>
    <meta name="viewport" content="width=device-width">
</head>
<body>
        <h1>Welcome!!</h1>
        <form name="open1" action="Show_HistoryController" method="post">
        <input type="hidden" name="dao" value="Access"/>
        </form>

        <div class="section">
        <h2>お店概要</h2>
        <form name="my_open" action="Show_HistoryController" method="post">
        	<input type="hidden" name="dao" value="Link"/>
        	<input type="hidden" name="colum" value="リンク１"/>
        	<p><a href="リンク先URL" onclick="Link1Open" target="_blank">リンク名１</a></p>
        </form>
        <br>
        <form name="my_open2" action="Show_HistoryController" method="post">
        	<input type="hidden" name="dao" value="Link"/>
        	<input type="hidden" name="colum" value="リンク２"/>
        	<p><a href="リンク先URL" onclick="Link2Open()" target="_blank">リンク名２</a></p>
        </form>


        </div>
</body>
</html>