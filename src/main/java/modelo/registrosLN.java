package modelo;

import java.util.Date;

public class RegistrosLN {
    
    private RegistrosDAO dao = new RegistrosDAO();

    public Registro procesarAlta(String dni, String nombre, String apellidos, String tramite, String entidad) {
        Registro reg = new Registro();
        reg.setDni(dni);
        reg.setNombre(nombre);
        reg.setApellidos(apellidos);
        reg.setTramite(tramite);
        reg.setEntidad(entidad);
        reg.setFecha(new Date());

        String id = "REG ";
        try {
            id += nombre.substring(0, 2).toUpperCase();
            id += apellidos.substring(0, 2).toUpperCase();
            id += dni.substring(0, 2);
            id += dni.substring(dni.length() - 1).toUpperCase();
        } catch (Exception e) {
            id += "GEN" + System.currentTimeMillis();
        }
        
        reg.setNumeroRegistro(id);
        dao.guardarRegistro(reg);
        
        return reg;
    }

    public Registro consultar(String numRegistro) {
        return dao.buscarRegistro(numRegistro);
    }
}