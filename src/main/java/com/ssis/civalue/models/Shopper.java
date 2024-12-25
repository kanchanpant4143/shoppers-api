package com.ssis.civalue.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "shopper_tbl")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Shopper implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "shopper_id", unique = true, nullable = false)
	private String shopperId;

	@OneToMany(targetEntity = Shelf.class, mappedBy = "shopper", cascade = CascadeType.ALL)	
	private List<Shelf> shelf = new ArrayList<>();

}
