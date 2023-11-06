<!doctype html>

<%@ page import = "java.io.*, java.util.*, java.sql.*" %>

<html>
    <head>
        <title>Bad practices 2</title>
    </head>

    <body>
        <table border="1" width="100%">
          <tr>
            <th>ID</th>
            <th>First</th>
            <th>Last</th>
            <th>Second</th>
            <th>Age</th>
          </tr>
          <%
            Class.forName("org.mariadb.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                  "jdbc:mariadb://172.31.92.110:3306/prueba?useSSL=false", 
                  "root", 
                  "Gustavo2023_");
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from persona");
            while (rs.next()) {
              Integer empId     = rs.getInt(1);
              String firstName  = rs.getString(2);
              String lastName   = rs.getString(3);
              String secondName = rs.getString(4);
              Integer age       = rs.getInt(5);
              %>
                <tr>
                    <td><%= empId %></td>
                    <td><%= firstName %></td>
                    <td><%= lastName %></td>
                    <td><%= secondName %></td>
                    <td><%= age %></td>
                </tr>
              <%
            } // while
          %>
        </table>
    </body>
</html>
