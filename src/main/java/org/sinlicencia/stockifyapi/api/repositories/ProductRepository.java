package org.sinlicencia.stockifyapi.api.repositories;

import org.sinlicencia.stockifyapi.api.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Product getById(Long id);
}
