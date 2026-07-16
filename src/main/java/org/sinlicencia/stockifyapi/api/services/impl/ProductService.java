package org.sinlicencia.stockifyapi.api.services.impl;

import org.sinlicencia.stockifyapi.api.model.Product;
import org.sinlicencia.stockifyapi.api.repositories.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(Long productId) throws Exception {
        return productRepository.getById(productId);
    }
}
