<%-- 
    Document   : mapdeal
    Created on : 2019-11-16, 15:46:06
    Author     : zc
--%>


<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String a;
           String url="jdbc:mysql://localhost:3306/tour?serverTimezone=GMT";
           String user="root";
           String password="jjq123";
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn=DriverManager.getConnection(url,user,password);
           String maj=request.getParameter("major");
            if(maj.equals("")) {
                out.println("<script language='javascript'>alert('请选择出发的城市！');window.location.href='homepage.html';</script>");     
            }else{
            String city[]=new String[45];
            int n=0;
            city[0]=request.getParameter("major");
            if(request.getParameter("checkbox1")!=null && !request.getParameter("checkbox1").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox1");
            } 
            if(request.getParameter("checkbox2")!=null && !request.getParameter("checkbox2").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox2");
            }
            if(request.getParameter("checkbox3")!=null && !request.getParameter("checkbox3").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox3");
            }
            if(request.getParameter("checkbox4")!=null && !request.getParameter("checkbox4").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox4");
            }
            if(request.getParameter("checkbox5")!=null && !request.getParameter("checkbox5").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox5");
            } 
            if(request.getParameter("checkbox6")!=null && !request.getParameter("checkbox6").equals(city[0])){
                n++;
                city[n]=request.getParameter("checkbox6");
            } 
            if(request.getParameter("checkbox7")!=null && !request.getParameter("checkbox7").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox7");
            } 
            if(request.getParameter("checkbox8")!=null && !request.getParameter("checkbox8").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox8");
            } 
            if(request.getParameter("checkbox9")!=null && !request.getParameter("checkbox9").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox9");
            } 
            if(request.getParameter("checkbox10")!=null && !request.getParameter("checkbox10").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox10");
            } 
            if(request.getParameter("checkbox11")!=null && !request.getParameter("checkbox11").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox11");
            } 
            if(request.getParameter("checkbox12")!=null && !request.getParameter("checkbox12").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox12");
            } 
            if(request.getParameter("checkbox13")!=null && !request.getParameter("checkbox13").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox13");
            }
            if(request.getParameter("checkbox14")!=null && !request.getParameter("checkbox14").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox14");
            } 
            if(request.getParameter("checkbox15")!=null && !request.getParameter("checkbox15").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox15");
            } 
            if(request.getParameter("checkbox16")!=null && !request.getParameter("checkbox16").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox16");
            } 
            if(request.getParameter("checkbox17")!=null && !request.getParameter("checkbox17").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox17");
            }
            if(request.getParameter("checkbox18")!=null && !request.getParameter("checkbox18").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox18");
            } 
            if(request.getParameter("checkbox19")!=null && !request.getParameter("checkbox19").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox19");
            } 
            if(request.getParameter("checkbox20")!=null && !request.getParameter("checkbox20").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox20");
            } 
            if(request.getParameter("checkbox21")!=null && !request.getParameter("checkbox21").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox21");
            } 
            if(request.getParameter("checkbox22")!=null && !request.getParameter("checkbox22").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox22");
            } 
            if(request.getParameter("checkbox23")!=null && !request.getParameter("checkbox23").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox23");
            } 
            if(request.getParameter("checkbox24")!=null && !request.getParameter("checkbox24").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox24");
            } 
            if(request.getParameter("checkbox25")!=null && !request.getParameter("checkbox25").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox25");
            } 
            if(request.getParameter("checkbox26")!=null && !request.getParameter("checkbox26").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox26");
            }
            if(request.getParameter("checkbox27")!=null && !request.getParameter("checkbox27").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox27");
            }
            if(request.getParameter("checkbox28")!=null && !request.getParameter("checkbox28").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox28");
            }
            if(request.getParameter("checkbox29")!=null && !request.getParameter("checkbox29").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox29");
            } 
            if(request.getParameter("checkbox30")!=null && !request.getParameter("checkbox30").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox30");
            }
            if(request.getParameter("checkbox31")!=null && !request.getParameter("checkbox31").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox31");
            }
            if(request.getParameter("checkbox32")!=null && !request.getParameter("checkbox32").equals(city[0])){
                n++;
                city[n]=request.getParameter("checkbox32");
            } 
            if(request.getParameter("checkbox33")!=null && !request.getParameter("checkbox33").equals(city[0])){
                n++;
                city[n]=request.getParameter("checkbox33");
            } 
            if(request.getParameter("checkbox34")!=null && !request.getParameter("checkbox34").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox34");
            } 
            if(request.getParameter("checkbox35")!=null && !request.getParameter("checkbox35").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox35");
            } 
            if(request.getParameter("checkbox36")!=null && !request.getParameter("checkbox36").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox36");
            } 
            if(request.getParameter("checkbox37")!=null && !request.getParameter("checkbox37").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox37");
            }
            if(request.getParameter("checkbox38")!=null && !request.getParameter("checkbox38").equals(city[0])){
                n++;
                city[n]=request.getParameter("checkbox38");
            }
            if(request.getParameter("checkbox39")!=null && !request.getParameter("checkbox39").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox39");
            }
            if(request.getParameter("checkbox40")!=null && !request.getParameter("checkbox40").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox40");
            }
            if(request.getParameter("checkbox41")!=null && !request.getParameter("checkbox41").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox41");
            }
            if(request.getParameter("checkbox42")!=null && !request.getParameter("checkbox42").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox42");
            }
            if(request.getParameter("checkbox43")!=null && !request.getParameter("checkbox43").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox43");
            }
            if(request.getParameter("checkbox44")!=null && !request.getParameter("checkbox44").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox44");
            }
            if(request.getParameter("checkbox45")!=null && !request.getParameter("checkbox45").equals(city[0])) {
                n++;
                city[n]=request.getParameter("checkbox45");
            }
            n=n+1;
            if(n==1) {
                out.println("<script language='javascript'>alert('请选择想旅游的城市！');window.location.href='homepage.html';</script>");    
            }else if(n>20) {
                out.println("<script language='javascript'>alert('旅游城市不超过20个！');window.location.href='homepage.html';</script>");    
            }
            else {
            String citylist="";
            int path[];
            double[][] distance;
            double[][] value;
            int[][] choice;

           double[] x=new double[n];
           double[] y=new double[n];
           distance=new double[n][n];
           for(int i = 0; i < n; i++) {
               a=city[i];
               PreparedStatement pStmt = conn.prepareStatement("select * from city where city='"+a+"';");
                   ResultSet rs = pStmt.executeQuery();
                   rs.next();
                   x[i]=rs.getDouble(2);
                   y[i]=rs.getDouble(3);
           }
           if(request.getParameter("item").equals("往返")) {
               for(int i = 0; i < n; i++) {
               for(int j = 0; j < n; j++) {
                       distance[i][j]=Math.sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
               }
           }
           } else if(request.getParameter("item").equals("单程")) {
               for(int i = 0; i < n; i++) {
               for(int j = 1; j < n; j++) {
                       distance[i][j]=Math.sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
               }
           }
           }
           int h=(int)Math.pow(2, n-1);
           value=new double[n][h];
           choice=new int[n][h];
           double min=Double.MAX_VALUE;
           int mink=0;
           for(int i=0;i<n;i++) {
                   value[i][0]=distance[i][0];
           }
           for(int i=1;i<(Math.pow(2, n-1));i++) {
                   for(int j=1;j<n;j++) {
                           int k=0;
                           String a1 = "";
                           for(int i1=n-2;i1>=0;i1--) {
                               a1 +=(i>>i1)&1;
                           }
                           int b1=a1.charAt(a1.length()-j)-48;
                           if(b1==0) {
                               String a2 = "";
                                for(int i1=n-2;i1>=0;i1--) {
                                    a2 +=(i>>i1)&1;
                                }
                                   for(int w=a2.length();w>0;w--) {
                                           k=a2.charAt(a2.length()-w)-48;
                                           if(k==1) {
                                                   k=k*w;
                                                   double y1=(distance[j][k]+value[k][(int)(i-Math.pow(2, k-1))]);
                                                   if(y1<min) {
                                                           min=(distance[j][k]+value[k][(int)(i-Math.pow(2, k-1))]);
                                                           mink=k;
                                                   }

                                           }
                                   }
                                   if(min<Double.MAX_VALUE) {
                                           value[j][i]=min;
                                           choice[j][i]=mink;
                                           min=Double.MAX_VALUE;
                                   }
                           }
                   }
           }
           min=Double.MAX_VALUE;
           int i=(int)(Math.pow(2, n-1)-1);
           for(int k=n-1;k>0;k--) {
                   double x1=(distance[0][k]+value[k][(int)(i-Math.pow(2, k-1))]);
                   if(x1<min) {
                           min=x1;
                           mink=k;
                   }
           }
           value[0][i]=min;
           choice[0][i]=mink;
           path=new int[n+1];
           path[0]=1;
           int c=1;
           for(int j=0;i>0;) {
                   j=choice[j][i];
                   i=(int)(i-Math.pow(2, j-1));
                   path[c++]=j+1;
           }
           path[c++]=1;
           for(int i2=0;i2<n;i2++) {
                   citylist +=city[path[i2]-1]+" ";
           }
           request.setAttribute("city",citylist);
           request.setAttribute("citynums",n);
           %>
           <jsp:forward page="map.jsp"/>
           <%
            }
            }
   %>
    </body>
</html>
