package com.project.song.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class service implements serviceImp {

	@Autowired
	SqlSession sqlSession;
	
	public service() {
	}
	
	@Override
	public String test() {
		return sqlSession.selectOne("testMapper.test");
	}
}
