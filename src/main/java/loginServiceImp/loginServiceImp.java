package loginServiceImp;


import java.util.Map;

public interface loginServiceImp {

	public String oneTest();
	
	public Map<String, String> loginCheck(Map<String, String> param);
	
	public int getIdCheck(Map<String, String> param);
	
	public String getMenuList();
	
	public Map<String, String> getUserName(Map<String, String> param);

}
