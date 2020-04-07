package com.project.song.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public String oneTest() {
		return sqlSession.selectOne("testMapper.getUser");
	}
}
