package demo1;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import DBConnection.ConnectionDB;


@WebServlet(name = "EmailListServlet", value = "/emailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/index.jsp";
        String action = request.getParameter("action");
        if (action == null){
            action = "join";
        }
        if (action.equals("join")){
            url = "/registerMail.jsp";
        }
        else if (action.equals("add")){

            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User  object and save User object in db
            User user = new User(firstName, lastName, email);
            //UserDB.insert(user);

            Connection conn = ConnectionDB.CreateConnect();

            try {
                boolean check = EmailDAO.checkEmail(conn, user);
                if(check == true){
                    EmailDAO.insertEmail(conn,user);
                    request.setAttribute("user", user);
                    url = "/thanks.jsp";    //the "thanks page
                    getServletContext().getRequestDispatcher(url).forward(request, response);
                }
                else {
                    String message = "The Email already exists";
                    request.setAttribute("msg", message);
                    RequestDispatcher rd = request.getRequestDispatcher("/registerMail.jsp");
                    rd.forward(request,response);
                }
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

            // set User object in request object and set URL

        }
        // forward request and response objects to specified URL

    }
}
