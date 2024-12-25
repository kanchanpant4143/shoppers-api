package com.ssis.civalue.dtos;

import com.ssis.civalue.models.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetProductsResponse {
    private List<Product> products;
}
