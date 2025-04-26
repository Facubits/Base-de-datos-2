```mermaid

erDiagram
    USUARIO {
        int ID_PK
        string Nombre
        string Apellido
        string Estado
        string Contraseña
        string Cargo
        decimal Salario
        datetime FechaIngreso
        int PerfilID_FK
    }
    PERFIL {
        int ID_PK
        string Nombre
        date FechaVigencia
        string Descripcion
        string Encargado
    }
    LOGIN {
        int ID_PK
        int UsuarioID_FK
        datetime FechaHora
    }
    FIDELIZACION {
        int ID_PK
        int UsuarioID_FK
        string Actividad
        datetime Fecha
        int Puntos
    }

    PERFIL ||--o{ USUARIO : "tiene"
    USUARIO ||--o{ LOGIN : "realiza"
    USUARIO ||--o{ FIDELIZACION : "participa"
