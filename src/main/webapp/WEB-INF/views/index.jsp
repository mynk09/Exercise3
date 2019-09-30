
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
		<form action="saveNote">
        		<input type="number" name="noteId" placeholder="ID">
        		<input type="text" name="noteTitle" placeholder="Title">
        		<input type="text" name="noteContent" placeholder="Content">
        		<input type="text" name="noteStatus" placeholder="Status">
        		<input type="submit" name="Send" value="Send">
        	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->

	<table>
    		<c:forEach items="${notes}" var="${note}">
    			<tr>
    				<td><c:out value="${note.noteId}"/></td>
    				<td><c:out value="${note.noteTitle}"/></td>
    				<td><c:out value="${note.noteContent}"/></td>
    				<td><c:out value="${note.noteStatus}"/></td>
    				<td><c:out value="${note.createdAt}"/></td>
    			</tr>
    		</c:forEach>
    	</table>
</body>
</html>