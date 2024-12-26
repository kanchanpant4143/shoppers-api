package com.ssis.civalue.exception;

import org.apache.coyote.BadRequestException;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.servlet.http.HttpServletRequest;

@RestControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(BadRequestException.class)
	public ResponseEntity<ErrorResponse> handleNullPointer(BadRequestException ex, HttpServletRequest request) {
		ErrorResponse response = new ErrorResponse();
		response.setError(ex.getMessage());
		response.setErrorMessage(ex.getMessage());
		response.setCallerUrl(request.getRequestURI());
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
	}

	@ExceptionHandler(NullPointerException.class)
	public ResponseEntity<ErrorResponse> handleNullPointer(NullPointerException ex, HttpServletRequest request) {
		ErrorResponse response = new ErrorResponse();
		response.setCallerUrl(request.getRequestURI());
		response.setErrorMessage(ex.getMessage());
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
	}

	@ExceptionHandler(NotFoundException.class)
	public ResponseEntity<ErrorResponse> handleNullPointer(NotFoundException ex, HttpServletRequest request) {
		ErrorResponse response = new ErrorResponse();
		response.setCallerUrl(request.getRequestURI());
		response.setErrorMessage(ex.getMessage());
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
	}

}
