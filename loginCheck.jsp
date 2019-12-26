<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  </head>
  <body>
    <%      //接收用户名和密码  
            String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");  
            String pwd = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8"); 
            String driverClass = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/用户?serverTimezone=GMT";
            String username = "root";
            String password = "jjq123";
            Class.forName(driverClass);//加载驱动 
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from travel where username = '" + name + "' and password = '" + pwd + "'");
            ResultSet rs = pStmt.executeQuery();
                if(rs.next()){
                    response.sendRedirect("homepage.html?username="+URLEncoder.encode(name)); //解决乱码 
                }else{
                    out.println("<script language='javascript'>alert('用户名不存在或密码错误');window.location.href='login.html'</script>");
                    //response.sendRedirect("login.html?errNo");//密码不对返回到登陆  
                }
     rs.close();
     pStmt.close();
     conn.close();
     %>
  </body>
</html>
