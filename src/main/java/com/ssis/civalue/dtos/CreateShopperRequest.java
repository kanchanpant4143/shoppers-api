package com.ssis.civalue.dtos;

import java.util.List;

import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateShopperRequest {

	@NotEmpty(message = "Shopper Id must not be empty")
	private String shopperId;
	@NotEmpty(message = "Shelf must not be empty")
	private List<ShelfDto> shelf;

}
