<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
    <%      
            String name = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8"); 
            String pwd = new String(request.getParameter("password2").getBytes("ISO-8859-1"),"UTF-8");  
            String gender=new String(request.getParameter("gender").getBytes("ISO-8859-1"),"UTF-8");  
            String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
            String driverClass = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/用户?serverTimezone=GMT";
            String username = "root";
            String password = "jjq123";
            Class.forName(driverClass);//加载驱动 
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from travel where username = '" + name + "'");
              ResultSet rs = pStmt.executeQuery();
                if(rs.next()){
                    out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='signup.html';</script>");
                }else{
                    PreparedStatement tmt = conn.prepareStatement("insert into travel values(0,'"+pwd+"','"+name+"','"+gender+"','"+city+"')");
                        int rst = tmt.executeUpdate();
                        if (rst != 0){
                              out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='login.html';</script>");                   
                        }else{
                           out.println("<script language='javascript'>alert('该用户名已存在，用户注册失败！');</script>");
                           response.sendRedirect("signup.html?errNo");
                        }
                }
     %>
  </body>
</html>
