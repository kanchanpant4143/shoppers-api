package com.ssis.civalue.models;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "shelf_tbl")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Shelf {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "relevancy_score")
	private Double relevancyScore;
	@ManyToOne
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	private Product product;

	@ManyToOne
	@JoinColumn(name = "shopper_id", referencedColumnName = "shopper_id")
	private Shopper shopper;

	public Shelf(Double relevancyScore, Product product, Shopper shopper) {
		this.relevancyScore = relevancyScore;
		this.product = product;
		this.shopper = shopper;
	}

}
