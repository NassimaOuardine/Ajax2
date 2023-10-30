package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import ma.school.beans.Etudiant;
import ma.school.service.EtudiantService;

public final class etudiantForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/template/header.jsp");
    _jspx_dependants.add("/template/menu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <script src=\"script/script.js\" type=\"text/javascript\"></script>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("    <script src=\"script/jsonExemple.js\" type=\"text/javascript\"></script>\n");
      out.write("    <style>\n");
      out.write("        /* Add inline CSS styles here */\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .content {\n");
      out.write("            margin: 20px;\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        fieldset {\n");
      out.write("            border: 2px solid #f8e0e0;\n");
      out.write("            padding: 10px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        table {\n");
      out.write("            width: 100%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        table th, table td {\n");
      out.write("            padding: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .tab {\n");
      out.write("            border-collapse: collapse;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .tab th {\n");
      out.write("            background-color: #f8e0e0;\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("        .bnupdate {\n");
      out.write("            background-color: #f6350a;\n");
      out.write("            color: white;\n");
      out.write("            padding: 5px 10px;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .bndelete{\n");
      out.write("            background-color: #9ef1b7;\n");
      out.write("            color: white;\n");
      out.write("            padding: 5px 10px;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .bndelete:hover, .bnupdate:hover {\n");
      out.write("            background-color: #f8e0e0;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .header {\n");
      out.write("        background-color: #f8e0e0; \n");
      out.write("        color: white; \n");
      out.write("        height: 110px;\n");
      out.write("        width: 100%;\n");
      out.write("        display: flex;\n");
      out.write("        justify-content: space-between;\n");
      out.write("        align-items: center;\n");
      out.write("        padding: 10px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #logo {\n");
      out.write("        width: 100px;\n");
      out.write("        height: 100px;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<div class=\"header\">\n");
      out.write("    <img id=\"logo\" src=\"images/Logo_Ensaj.png\" alt=\"logo\"/>\n");
      out.write("</div>\n");
      out.write("<script>\n");
      out.write("    function showConfirmation(machineId) {\n");
      out.write("        var result = confirm(\"Êtes-vous sûr de vouloir supprimer cette machine ?\");\n");
      out.write("        if (result) {\n");
      out.write("            // L'utilisateur a cliqué sur \"OK\", redirigez vers la servlet pour effectuer la suppression.\n");
      out.write("            window.location.href = \"MachineController?op=delete&id=\" + machineId;\n");
      out.write("        } else {\n");
      out.write("            // L'utilisateur a cliqué sur \"Annuler\", ne rien faire.\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("    function showConfirmationE(etudiantId) {\n");
      out.write("        var result = confirm(\"Êtes-vous sûr de vouloir supprimer cette machine ?\");\n");
      out.write("        if (result) {\n");
      out.write("            // L'utilisateur a cliqué sur \"OK\", redirigez vers la servlet pour effectuer la suppression.\n");
      out.write("            window.location.href = \"EtudiantController?op=delete&id=\" + etudiantId;\n");
      out.write("        } else {\n");
      out.write("            // L'utilisateur a cliqué sur \"Annuler\", ne rien faire.\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("    function showConfirmationM(marqueId) {\n");
      out.write("        var result = confirm(\"Êtes-vous sûr de vouloir supprimer cette machine ?\");\n");
      out.write("        if (result) {\n");
      out.write("            // L'utilisateur a cliqué sur \"OK\", redirigez vers la servlet pour effectuer la suppression.\n");
      out.write("            window.location.href = \"MarqueController?op=delete&id=\" + marqueId;\n");
      out.write("        } else {\n");
      out.write("            // L'utilisateur a cliqué sur \"Annuler\", ne rien faire.\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    ul {\n");
      out.write("        list-style-type: none;\n");
      out.write("        padding: 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    li {\n");
      out.write("        margin: 10px 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    a {\n");
      out.write("        text-decoration: none;\n");
      out.write("        color: #f8e0e0;\n");
      out.write("        display: block;\n");
      out.write("        padding: 10px;\n");
      out.write("        border-radius: 5px;\n");
      out.write("        transition: background-color 0.2s;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    a:hover {\n");
      out.write("        background-color: #eee;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .active {\n");
      out.write("        background-color: #f8e0e0;\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<div style=\"display: flex;\">\n");
      out.write("    <div style=\"flex: 0 0 200px; background-color: #f5f5f5; padding: 20px;\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a class=\"active\" href=\"#home\">Home</a></li>\n");
      out.write("            <li><a href=\"etudiantForm.jsp\">Gestion des étudiants</a></li>\n");
      out.write("            <li><a href=\"marqueForm.jsp\">Gestion des marques</a></li>\n");
      out.write("            <li><a href=\"machineForm.jsp\">Gestion des machines</a></li>\n");
      out.write("            <li><a href=\"machineByMarqueForm.jsp\">Machines par marque</a></li>\n");
      out.write("            <li><a href=\"machineByReference.jsp\">Machines par référence</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"content\">\n");
      out.write("        <form method=\"GET\" action=\"EtudiantController\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Informations Etudiant</legend>\n");
      out.write("                <table border=\"0\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Nom</td>\n");
      out.write("                        <td><input id=\"nom\" type=\"text\" name=\"nom\" value=\"\"  required=\"\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Prenom</td>\n");
      out.write("                        <td><input id=\"prenom\" type=\"text\" name=\"prenom\" value=\"\" required=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <!-- Rest of your form -->\n");
      out.write("                </table>\n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("        ");

            EtudiantService es = new EtudiantService();
        
      out.write("\n");
      out.write("        <fieldset>\n");
      out.write("            <legend>Liste des étudiants</legend>\n");
      out.write("            <table border=\"1\" class=\"tab\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Id</th>\n");
      out.write("                        <th>Nom <br>\n");
      out.write("                            <input id=\"f\" type=\"text\" name=\"f\" value=\"\" /></th>\n");
      out.write("                        <th>Prenom</th>\n");
      out.write("                        <th>Ville</th>\n");
      out.write("                        <th>Date de naissance</th>\n");
      out.write("                        <th>Sexe</th>\n");
      out.write("                        <th>Action</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");

                        for (Etudiant e : es.findAll()) {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(e.getId());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(e.getNom());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(e.getPrenom());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(e.getVille());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(e.getDateNaissance());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(e.getSexe());
      out.write("</td>\n");
      out.write("                        <td>\n");
      out.write("                            <button class=\"bndelete\" onclick=\"showConfirmationE(");
      out.print(e.getId());
      out.write(")\">Supprimer</button>\n");
      out.write("                            <button class=\"bnupdate\">Modifier</button>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </fieldset>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
