package org.sinlicencia.stockifyapi.api.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.data.domain.Page;
import org.sinlicencia.stockifyapi.api.exceptions.ProductNotFoundException;
import org.sinlicencia.stockifyapi.api.model.Product;
import org.sinlicencia.stockifyapi.api.services.ProductService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class ProductController {
    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @Operation(
            summary = "Create insured item",
            responses = {
                    @ApiResponse(responseCode = "201", description = "Created",
                    content = @Content(mediaType = "application/json",
                    schema = @Schema(implementation = Product.class))),
                    @ApiResponse(responseCode = "400", description = "Bad request")
            }
    )
    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/create")
    public ResponseEntity<Product> createProduct(@RequestBody Product product) {
        Product createdProduct = productService.createProduct(product);
        return new ResponseEntity<>(createdProduct, HttpStatus.CREATED);
    }

    @GetMapping()
    public List<Product> findAllProducts()
    {
        return productService.getAllProducts();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Product> updateProduct(@PathVariable Long id,
                                                 @RequestBody Product product)
    {
        try {
            Product updatedProduct = productService.updateProduct(id, product);
            return new ResponseEntity<>(updatedProduct, HttpStatus.OK);
        } catch (ProductNotFoundException ex)
        {
            return new ResponseEntity<>((HttpHeaders) null, HttpStatus.BAD_REQUEST);
        } catch (Exception ex)
        {
            return new ResponseEntity<>((HttpHeaders) null, HttpStatus.NOT_FOUND);
        }

    }

    @GetMapping("/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable Long id)
    {
        try {
            Product product = productService.findProductById(id);
            return new ResponseEntity<>(product, HttpStatus.OK);
        } catch (ProductNotFoundException ex) {
            return new ResponseEntity<>((HttpHeaders) null,HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/searchproductcategory")
    public ResponseEntity<List<Product>> getProductByCategory(@RequestParam(value = "productCategory") String productCategory)
    {
        List<Product> results = productService.findByProductCategory(productCategory);

        if (results.isEmpty())
        {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        else
        {
            return new ResponseEntity<>(results, HttpStatus.OK);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteProduct(@PathVariable Long id)
    {
        productService.deleteProduct(id);
        return new ResponseEntity<>("Record deleted", HttpStatus.OK);
    }

    // PAGINATED RESPONSE
    @GetMapping("/paginated")
    public Page<Product> findAllProductWithPagination(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "5") int size)
    {
        return productService.findAllProductWithPagination(page, size);
    }
}
