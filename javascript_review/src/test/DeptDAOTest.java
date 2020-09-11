package test;

import java.util.ArrayList;

public class DeptDAOTest {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
		//dao.insert(new DeptVO(1200, "인사"));
		//dao.update(new DeptVO(1000, "영업"));
		//dao.delete(new DeptVO(1000));
		//dao.delete(new DeptVO(1000, null));
		//DeptVO deptVO = dao.selectOne(new DeptVO(10));
		//System.out.println(deptVO); // toString은 sout을 씌우면 따로 메소드를 호출하지 않아도 자동으로 불려와짐
		ArrayList<DeptVO> list = dao.selectAll(null);
		System.out.println(list);
	}
}
