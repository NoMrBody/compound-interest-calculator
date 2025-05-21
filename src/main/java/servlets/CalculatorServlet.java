package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.Util;

import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"", "/"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String principalAmount = req.getParameter("principal-amount");
        String interestRate = req.getParameter("interest");
        String years = req.getParameter("years");
        String compoundingPeriod = req.getParameter("compounding-period");

        String error;

        if (principalAmount == null || principalAmount.isBlank() || interestRate == null || interestRate.isBlank() ||
                years == null || years.isBlank() || compoundingPeriod == null || compoundingPeriod.isBlank()) {
            error = "Please fill in all fields";
            req.setAttribute("error", error);
        } else {
            req.setAttribute("error", null);
            double result = Util.calculateCompoundInterest(
                    Double.parseDouble(principalAmount),
                    Double.parseDouble(interestRate) / 100,
                    Integer.parseInt(years),
                    Integer.parseInt(compoundingPeriod));
            req.setAttribute("result", result);
        }

        req.setAttribute("principal", principalAmount);
        req.setAttribute("interest", interestRate);
        req.setAttribute("years", years);
        req.setAttribute("compoundingPeriod", compoundingPeriod);


        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
