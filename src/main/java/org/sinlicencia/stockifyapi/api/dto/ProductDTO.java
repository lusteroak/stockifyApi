package org.sinlicencia.stockifyapi.api.dto;

public record ProductDTO(
        Long id,
        String productName,
        String productDescription,
        String productCategory,
        double productPrice,
        int productQuantity,
        boolean isAvailable
) {
}
