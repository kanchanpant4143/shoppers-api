package com.ssis.civalue.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShelfDto {

	private Long id;
	private String productId;
	private Double relevancyScore;

}
