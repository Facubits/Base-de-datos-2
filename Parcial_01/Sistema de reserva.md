## Sistema de Reservas

```mermaid
erDiagram
    ESTABLECIMIENTO {
        int ID_PK
        string Nombre
        string Ubicacion
        int NumeroCanchas
        string Dueño
        string Telefono
        int Capacidad
    }
    CANCHA {
        int ID_PK
        string Nombre
        float Tarifa
        int Capacidad
        int EstablecimientoID_FK
    }
    DEPORTE {
        int ID_PK
        string Nombre
        string Tipo
        string Imagen
        string Icono
        string Clasificacion
        int CanchaID_FK
    }
    USUARIO {
        int ID_PK
        string Nombre
        string Username
        string Contraseña
        string Estado
        string Perfil
        string Correo
        datetime UltimoIngreso
        boolean EsDueño
    }
    DEPORTE_FAVORITO {
        int ID_PK
        string Nombre
        int DeporteID_FK
        int UsuarioID_FK
        string Descripcion
    }
    FORMA_PAGO {
        int ID_PK
        string Nombre
        int UsuarioID_FK
        int EstablecimientoID_FK
        int CanchaID_FK
    }

    ESTABLECIMIENTO ||--o{ CANCHA : "posee"
    CANCHA ||--|{ DEPORTE : "asociado a"
    USUARIO ||--o{ DEPORTE_FAVORITO : "tiene"
    DEPORTE ||--o{ DEPORTE_FAVORITO : "preferido en"
    USUARIO ||--o{ FORMA_PAGO : "realiza"
    ESTABLECIMIENTO ||--o{ FORMA_PAGO : "ubicado en"
    CANCHA ||--o{ FORMA_PAGO : "reserva de"
