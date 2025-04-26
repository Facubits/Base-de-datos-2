```mermaid
erDiagram
    USUARIO {
        INT id_usuario
        VARCHAR nombre
        VARCHAR apellido
        VARCHAR nombre_usuario
        VARCHAR token
        VARCHAR contrasena
        VARCHAR ciudad
        VARCHAR sexo
        VARCHAR estado_civil
        VARCHAR tipo_empresa
        VARCHAR direccion
        VARCHAR tipo_usuario
        BOOLEAN activo
        DATE fecha_registro
    }
    LOGIN {
        INT id_login
        INT id_usuario
        VARCHAR agente_usuario
        DATE fecha_login
        VARCHAR token
    }
    TIPO_PRUEBA {
        INT id_tipo_prueba
        VARCHAR referencia
        VARCHAR nombre
        TEXT descripcion
        DATE fecha_ingreso
        BOOLEAN estado
        VARCHAR categoria
        VARCHAR nivel_riesgo
    }
    PAGO {
        INT id_pago
        INT id_usuario
        DECIMAL monto
        DATE fecha_pago
        VARCHAR metodo_pago
        BOOLEAN confirmado
        VARCHAR referencia_pago
    }
    INFORME {
        INT id_informe
        INT id_usuario
        INT id_tipo_prueba
        DATE fecha_informe
        TEXT resultado
        VARCHAR estado_informe
        BOOLEAN aprobado
    }

    USUARIO ||--o{ LOGIN : "realiza"
    USUARIO ||--o{ PAGO : "efectua"
    USUARIO ||--o{ INFORME : "recibe"
    TIPO_PRUEBA ||--o{ INFORME : "genera"
