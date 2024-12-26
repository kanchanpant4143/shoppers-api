package com.ssis.civalue.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ErrorResponse {

	private String error;
	private String errorMessage;
	private String callerUrl;

}
