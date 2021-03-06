<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<% 
Object methodObject = request.getAttribute("method");
String method = methodObject != null ? (String) methodObject : "rankup";
%>

<body>

	<%@include file='navbar.jsp'%>
	
	<br><br>
	
	<main>
		<h1>Keyword Extraction</h1>
		<h2>Text</h2>
		<form method="POST">
			Method:
			<select id="method" name="method" required>
			  <option value="rankup" <%= method.equalsIgnoreCase("rankup") ? "selected" : "" %>>RankUp</option>
			  <option value="textrank" <%= method.equalsIgnoreCase("textrank") ? "selected" : "" %>>TextRank</option>
			  <option value="rake" <%= method.equalsIgnoreCase("rake") ? "selected" : "" %>>RAKE</option>
			  <option value="tfidf" <%= method.equalsIgnoreCase("tfidf") ? "selected" : "" %>>TFIDF</option>
			  <option value="ridf" <%= method.equalsIgnoreCase("ridf") ? "selected" : "" %>>RIDF</option>
			  <option value="clusteredness" <%= method.equalsIgnoreCase("clusteredness") ? "selected" : "" %>>Clusteredness</option>
			</select>
			<br/>
			<textarea id="original-text" name="text" rows="10" cols="100" placeholder="Enter text here...">${text}</textarea>
			<br/> 
			<input id="keywords-btn" type="submit" value="Extract keywords!" />
		</form>

		<div id="loading-div">
			<img width="30px" src="resources/img/hourglass.svg" />
		</div> 

		<h2>Keywords</h2>
		<div id="keywords-div">
			<table id="keywords-table">
		        <thead>
		            <tr>
		                <th class="col-left">Keyword</th>
		                <th class="col-right">Score</th>
		            </tr>
		        </thead>
		        <tbody>
		            <tr>
		                <td class="col-left"></td>
		                <td class="col-right"></td>
		            </tr>
		        </tbody>
		    </table>
	    </div>
	</main>
	
	<%@include file='footer.jsp'%>
	
</body>
</html>