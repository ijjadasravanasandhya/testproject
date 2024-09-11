<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >

.logo-img{

 width: 300px;
  height: 200px;
}




</style>
</head>
<body>

	<div class="header">
            <div class="logo">
                <img class="logo-img" src="https://static.vecteezy.com/system/resources/previews/004/204/924/original/food-logo-template-design-icon-illustration-vector.jpg"/>
            </div>
             <div class="nav-items">
        		<ul>
          			<li>Home</li>
          			<li>About Us</li>
          			<li>Contact Us</li>
          			<li>Cart</li>
       			</ul>
      		 </div>
    </div>
    
    
    <%
    
    String jdbcURL = "jdbc:mysql://localhost:3306/tmf_food";
    String jdbcUsername = "root";
    String jdbcPassword = "sgst@123";

    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
       
        Class.forName("com.mysql.cj.jdbc.Driver");

       
        con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

       
        statement = con.createStatement();

        
        String sql = "SELECT * FROM restaurantdetails";
        resultSet = statement.executeQuery(sql);

       
        while (resultSet.next()) {
            String res_img = resultSet.getString("image");
            String name = resultSet.getString("name");
            String avg = resultSet.getString("avg_rating");
            String costForTwo = resultSet.getString("costForTwo");
        
%>
    
    <div class="res-container">
    <div class="res-card" >
        <img
          class="res-logo"
          alt="res-logo"
          src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/<%= res_img %>";  
        />
        <h3><%= name %></h3>
        <h4><%= avg %></h4>
        <h4><%= costForTwo %></h4>
    </div>
    </div>
    
<%
        } 
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
       if (con != null) try { con.close(); } catch (SQLException ignore) {}
    }
%>

</body>
</html>