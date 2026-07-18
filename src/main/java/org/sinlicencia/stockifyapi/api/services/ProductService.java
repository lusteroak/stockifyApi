package org.sinlicencia.stockifyapi.api.services;

import org.sinlicencia.stockifyapi.api.dto.ProductDTO;
import org.sinlicencia.stockifyapi.api.exceptions.InvalidProductException;
import org.sinlicencia.stockifyapi.api.exceptions.ProductNotFoundException;
import org.sinlicencia.stockifyapi.api.model.Product;
import org.sinlicencia.stockifyapi.api.repositories.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    // CREATE PRODUCT
    public Product createProduct(Product product) {
        if (product.getProductName() == null)
        {
            throw new InvalidProductException("Invalid Product: Product need a name!");
        }
        return productRepository.save(product);
    }

    // GET ALL PRODUCTS
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    // GET PRODUCT BY ID
    public Product findProductById(Long id) {
        return productRepository.findById(id).orElseThrow(
                () -> new ProductNotFoundException("Product not found with id: " + id)
        );
    }

    // UPDATE PRODUCT
    public Product updateProduct(Long id,Product product) {
        if (product.getProductName() == null){
            throw new InvalidProductException("Invalid Product: product name must not be null");
        }
        Product existingProduct = productRepository.getById(id);
        existingProduct.setProductCategory(product.getProductCategory());
        existingProduct.setAvailable(product.isAvailable());
        existingProduct.setProductQuantity(product.getProductQuantity());
        existingProduct.setProductName(product.getProductName());
        existingProduct.setProductDescription(product.getProductDescription());
        existingProduct.setProductPrice(product.getProductPrice());
        return productRepository.save(existingProduct);
    }

    // DELETE PRODUCT
    public void deleteProduct(Long id) {
        if (!productRepository.existsById(id)) {
            throw new ProductNotFoundException("Product not found with id: " + id);
        }
        productRepository.deleteById(id);
    }

    // GET PRODUCT BY CATEGORY
    public List<Product> findByProductCategory(String productCategory) {
        return productRepository.findAll()
                .stream()
                .filter(product -> product.getProductCategory().equalsIgnoreCase(productCategory))
                .toList();
    }

    // GET ALL PRODUCTS PAGINATED
    public Page<Product> findAllProductWithPagination(int page, int size)
    {
        Pageable pageable = PageRequest.of(page, size);
        return productRepository.findAll(pageable);
    }
}
