<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script>
$(function(){
	$(`#fileForm`)
	$.ajax({ 
		type: "POST", 
		enctype: 'multipart/form-data', // 필수 
		url: '/', 
		data: formData, // 필수 
		processData: false, // 필수 
		contentType: false, // 필수 
		cache: false, 
		success: function (d) { }, 
		error: function (e) { }
	});
})
</script>
<h1>파일 업로드 화면</h1>

<form id="fileForm" method="post" enctype="multipart/form-data">
	<input type="file" name="file">
</form>