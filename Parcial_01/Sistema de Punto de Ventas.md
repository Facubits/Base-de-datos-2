## Sistema de Punto de Ventas

```mermaid
erDiagram
    PRODUCTO {
        INT id_producto
        VARCHAR nombre
        TEXT descripcion
        DECIMAL precio
        INT stock
        BOOLEAN activo
        VARCHAR codigo_unico
        DATE fecha_creacion
    }

    CATEGORIA {
        INT id_categoria
        VARCHAR nombre
        TEXT descripcion
        BOOLEAN vigente
        VARCHAR slug
        DATE fecha_creacion
    }

    CLIENTE {
        INT id_cliente
        VARCHAR nombre
        VARCHAR email
        VARCHAR telefono
        BOOLEAN activo
        VARCHAR tipo_cliente
        DATE fecha_registro
    }

    VENTA {
        INT id_venta
        INT id_cliente
        DATE fecha_venta
        DECIMAL total
        VARCHAR tipo_pago
        VARCHAR estado_venta
    }

    DETALLE_VENTA {
        INT id_detalle
        INT id_venta
        INT id_producto
        INT cantidad
        DECIMAL precio_unitario
        DECIMAL subtotal
    }

    PRODUCTO ||--o{ DETALLE_VENTA : "incluye"
    VENTA ||--o{ DETALLE_VENTA : "contiene"
    CLIENTE ||--o{ VENTA : "realiza"
    CATEGORIA ||--o{ PRODUCTO : "clasifica"
