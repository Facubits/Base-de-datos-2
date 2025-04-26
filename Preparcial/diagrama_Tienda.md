## Diagrama de Tienda

```mermaid
erDiagram
    TIENDA {
      INT id_tienda
      VARCHAR nombre
      VARCHAR ubicacion
      BOOLEAN abierta
      VARCHAR codigo_unico
    }
    EMPLEADO {
      INT id_empleado
      VARCHAR nombre
      VARCHAR apellido
      DATE fecha_ingreso
      BOOLEAN activo
      VARCHAR tipo_lista
    }
    CARGO {
      INT id_cargo
      VARCHAR titulo
      DECIMAL salario_base
      VARCHAR nivel
      BOOLEAN vigente
    }
    NOMINA {
      INT id_nomina
      INT id_empleado
      INT id_tienda
      DATE periodo_inicio
      DATE periodo_fin
      DECIMAL total_devengado
      BOOLEAN pagado
      VARCHAR medio_pago
    }

    TIENDA ||--o{ NOMINA : "genera"
    EMPLEADO ||--o{ NOMINA : "recibe"
    CARGO ||--o{ EMPLEADO : "ocupa"


