package com.ssis.civalue.dtos;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateShopperRequest {

	private String shopperId;
	private List<ShelfDto> shelf;

}
