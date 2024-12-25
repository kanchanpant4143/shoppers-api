package com.ssis.civalue.dtos;

import com.ssis.civalue.models.Shelf;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateShopperResponse {

    private Long id;
    private String shopperId;
    private List<Shelf> shelf;

}
