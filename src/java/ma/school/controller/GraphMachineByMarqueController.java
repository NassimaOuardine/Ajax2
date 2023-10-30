/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.school.controller;

/**
 *
 * @author ouardine
 */


import com.google.gson.Gson;
import ma.school.beans.Marque;
import ma.school.service.MachineService;
import ma.school.service.MarqueService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.school.beans.Machine;

@WebServlet(name = "GraphMachineByMarqueController", urlPatterns = {"/GraphMachineByMarqueController"})
public class GraphMachineByMarqueController extends HttpServlet {

    private final MarqueService ms = new MarqueService();
    private final MachineService mms = new MachineService();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");

        // Get data for all marques and their machine counts
        List<Marque> marques = ms.findAll();
        List<MachineCountByMarque> data = new ArrayList<>();

        for (Marque marque : marques) {
            int marqueId = marque.getId();
            List<Machine> machines = mms.findByMarque(marque);
            data.add(new MachineCountByMarque(marque.getLibelle(), machines.size()));
        }

        String json = new Gson().toJson(data);
        response.getWriter().write(json);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for generating a graph of machines by marque";
    }

    class MachineCountByMarque {
        private String marque;
        private int count;

        public MachineCountByMarque(String marque, int count) {
            this.marque = marque;
            this.count = count;
        }
    }
}