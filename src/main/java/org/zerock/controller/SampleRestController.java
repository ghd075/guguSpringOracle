package org.zerock.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;

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
	
    @GetMapping(value = "/getSample", 
    		produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, 
    					MediaType.APPLICATION_XML_VALUE})
    public SampleVO getSample() {
        return new SampleVO(112, "스타", "로드");
    }

    @GetMapping(value = "/getSample2")
    public SampleVO getSample2() {
        return new SampleVO(113, "로켓", "라쿤");
    }
}
