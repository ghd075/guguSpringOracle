package org.zerock.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/rest")
@Log4j
public class SampleRestController {
	
	@GetMapping(value = "/getTest", produces = "text/plain; charset=UTF-8")
	public String getTest() {
		
		log.info("MIME TYPE : " + MediaType.TEXT_PLAIN);
		
		return "안녕하세요";
	}

}
