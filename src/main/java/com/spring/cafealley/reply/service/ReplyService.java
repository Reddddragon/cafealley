package com.spring.cafealley.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cafealley.command.ReplyVO;
import com.spring.cafealley.reply.mapper.INoReplyMapper;

@Service
public class ReplyService implements IReplyService {

	@Autowired
	private INoReplyMapper nomapper;
	
	@Override
	public void replyRegist(ReplyVO vo) {
		nomapper.replyRegist(vo);
	}

	@Override
	public List<ReplyVO> getList(int bno) {
		return nomapper.getList(bno);
	}

	@Override
	public void replyUpdate(ReplyVO vo) {
		nomapper.replyUpdate(vo);
	}

	@Override
	public void replyDelete(int rno) {
		nomapper.replyDelete(rno);
	}



}
