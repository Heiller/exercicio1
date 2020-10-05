<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" 
    	import= "java.util.Calendar"
		import= "java.util.Locale"
		import= "java.text.DateFormat"
		import= "java.util.Date"
		%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Data</title>
</head>
<body>
  <%Calendar c = Calendar.getInstance(); 
    Date data = c.getTime();
    Locale brasil = new Locale("pt", "BR");
    Locale eua = Locale.US;
    DateFormat f2 = DateFormat.getDateInstance(DateFormat.FULL, brasil);
    DateFormat f3 = DateFormat.getDateInstance(DateFormat.FULL, eua);
    %>
    <p><h1>data de hoje formato brasileiro</h1>
     <%out.println("Data brasileira: "+f2.format(data));%>
    <p><h1>data de hoje formato americano</h1>
     <%out.println("Data americana: "+f3.format(data));%>
</body>
</html>