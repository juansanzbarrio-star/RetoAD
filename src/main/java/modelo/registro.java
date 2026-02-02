package modelo;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "registros")
public class Registro {

    @Id
    @Column(name = "numero_registro")
    private String numeroRegistro;

    @Column(name = "dni")
    private String dni;
    private String nombre;
    private String apellidos;
    private String tramite;
    private String entidad;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;

    public Registro() {}

    public String getNumeroRegistro() { return numeroRegistro; }
    public void setNumeroRegistro(String numeroRegistro) { this.numeroRegistro = numeroRegistro; }
    public String getDni() { return dni; }
    public void setDni(String dni) { this.dni = dni; }
    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public String getApellidos() { return apellidos; }
    public void setApellidos(String apellidos) { this.apellidos = apellidos; }
    public String getTramite() { return tramite; }
    public void setTramite(String tramite) { this.tramite = tramite; }
    public String getEntidad() { return entidad; }
    public void setEntidad(String entidad) { this.entidad = entidad; }
    public Date getFecha() { return fecha; }
    public void setFecha(Date fecha) { this.fecha = fecha; }
}