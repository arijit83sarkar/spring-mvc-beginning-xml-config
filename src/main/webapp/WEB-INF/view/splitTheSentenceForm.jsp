<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Split It - Spring MVC</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

.header {
	padding: 5px;
	text-align: center;
	background: #0eb0eb;
	color: white;
	font-size: 22px;
}

.content {
	padding: 10px;
}
</style>
</head>
<body>
	<div class="header">
		<h1>Spring MVC</h1>
		<p>Welcome to Spring MVC Web Application</p>
	</div>

	<div class="content">
		<h2>Split The Sentence</h2>
		<form action="processSplitTheSentence" method="get">
			<input type="text" name="sentence"
				placeholder="Please enter a sentence!"
				style="width: 320px; height: 22px;" /> <input type="submit"
				value="Split It" style="width: 80px; height: 28px;" />
		</form>
		<br />

		<!-- shows the result -->
		<c:if test="${not empty splitedSentence}">
			<span>No of words in the sentence: ${noOfWords} </span>
			<br />
			<c:forEach items="${splitedSentence}" var="word"
				varStatus="loopCounter">
				<span>&nbsp&nbsp${loopCounter.count}.&nbsp<c:out
						value="${word}" /></span>
				<br />
			</c:forEach>
		</c:if>
	</div>
</body>
</html>