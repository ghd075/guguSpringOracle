package org.zerock.mapper;

import org.zerock.domain.ReplyVO;

public interface ReplyMapper {

	//등록
	public int insert(ReplyVO vo);
	
	//조회
	public ReplyVO read(Long bno);
	
	//삭제
	public int delete(Long rno);
}
