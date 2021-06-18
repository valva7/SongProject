package loginService;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import loginServiceImp.loginServiceImp;

@Service
public class loginService implements loginServiceImp {

	@Autowired
	SqlSession sqlSession;
	
	public loginService() {
	}
	
	@Override
	public String oneTest() {
		return sqlSession.selectOne("menuMapper.getUser");
	}
	
	@Override
	public String getMenuList() {
		return sqlSession.selectOne("menuMapper.getMenuList");
	}
	
	@Override
	public Map<String, String> loginCheck(Map<String, String> param) {
		return sqlSession.selectOne("userMapper.loginCheck", param);	
	}
	
	@Override
	public int getIdCheck(Map<String, String> param) {
		return sqlSession.selectOne("userMapper.idCheck", param);	
	}
	
	@Override
	public Map<String, String> getUserName(Map<String, String> param) {
		return sqlSession.selectOne("userMapper.getUserName", param);
	}
}
