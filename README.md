# RETO AD - Javier Villacorta y Juan Sanz
## SEDE ELECTRÓNICA GF - Proyecto Acceso a Datos

Aplicación web Java EE desarrollada bajo el patrón **MVC** (Modelo-Vista-Controlador) utilizando **Hibernate Nativo** para la persistencia de datos.

La aplicación permite a los miembros de la comunidad educativa:
- **Dar de alta** nuevos registros de trámites.
- **Consultar** registros existentes mediante su número de identificación.

## 🛠️ Tecnologías utilizadas
- **Java EE** (Servlets & JSP)
- **Hibernate** (Gestión de base de datos)
- **MySQL** (Base de datos 'sede')
- **Maven** (Gestión de dependencias)
- **Tomcat** (Servidor de aplicaciones)

## 🗄️ Base de Datos
Para que la aplicación funcione, es necesario ejecutar este script en tu gestor MySQL para crear la base de datos y la tabla necesaria:

```sql
CREATE DATABASE IF NOT EXISTS sede;
USE sede;

CREATE TABLE registros (
    numero_registro VARCHAR(20) PRIMARY KEY,
    dni VARCHAR(9) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    tramite VARCHAR(100) NOT NULL,
    entidad VARCHAR(50) NOT NULL,
    fecha DATETIME NOT NULL
);
