## Sistema de Productos

```mermaid
erDiagram
    PRODUCTO {
      INT id_producto
      VARCHAR nombre
      TEXT descripcion
      DECIMAL precio
      INT stock
      DATE fecha_creacion
      BOOLEAN activo
      VARCHAR codigo_unico
    }
    CATEGORIA {
      INT id_categoria
      VARCHAR nombre
      TEXT descripcion
      BOOLEAN vigente
      VARCHAR slug
    }
    PROVEEDOR {
      INT id_proveedor
      VARCHAR nombre
      VARCHAR telefono
      VARCHAR email
      BOOLEAN activo
      VARCHAR pais
    }
    CATEGORIA_PRODUCTO {
      INT id_categoria
      INT id_producto
      DATE fecha_asignacion
    }

    PRODUCTO ||--o{ CATEGORIA_PRODUCTO : "asigna"
    CATEGORIA ||--o{ CATEGORIA_PRODUCTO : "contiene"
    PRODUCTO }o--|| PROVEEDOR : "suministrado_por"

