package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Registro;
import modelo.RegistrosLN;

public class ServletRegistro extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RegistrosLN ln = new RegistrosLN();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        if (accion == null) {
             if(request.getParameter("dni") != null) {
                 accion = "alta";
             } else if (request.getParameter("numRegistro") != null) {
                 accion = "buscar";
             }
        }

        if ("alta".equals(accion)) {
            try {
                String dni = request.getParameter("dni");
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String tramite = request.getParameter("tramite");
                String entidad = request.getParameter("entidad");

                Registro reg = ln.procesarAlta(dni, nombre, apellidos, tramite, entidad);

                request.setAttribute("numeroRegistro", reg.getNumeroRegistro());
                request.setAttribute("fechaRegistro", reg.getFecha());
                request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                
            } catch (Exception e) {
                request.setAttribute("error", "si");
                request.getRequestDispatcher("mensaje.jsp").forward(request, response);
            }
        } else if ("buscar".equals(accion)) {
            String num = request.getParameter("numRegistro");
            Registro reg = ln.consultar(num);
            
            if (reg != null) {
                request.setAttribute("registroEncontrado", reg);
                request.getRequestDispatcher("consultar.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("consulta.jsp").forward(request, response);
            }
        }
    }
}