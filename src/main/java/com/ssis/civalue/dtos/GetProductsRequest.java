package com.ssis.civalue.dtos;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetProductsRequest {

//	@NotBlank(message = "ShopperId should not be blank")
//	private String shopperId;
	private String category;
	private String brand;
	@Min(value = 10, message = "Minimum limit should be 10")
	@Max(value = 100, message = "Minimum limit should be 10")
	private Integer limit = 10;

}
