import com.exam.dao.SF_join1_dao;
import com.exam.dao.SF_join2_dao;
import com.exam.dao.SF_join3_dao;
import com.exam.dto.SF_join1_dto;
import com.exam.dto.SF_join2_dto;
import com.exam.dto.SF_join3_dto;

public class Test_1 {
	public static void main(String[] args) {
		SF_join1_dao dao = new SF_join1_dao();
		SF_join2_dao dao2 = new SF_join2_dao();
		SF_join3_dao dao3 = new SF_join3_dao();
		
		SF_join1_dto dto1 = dao.selectById("123");
		System.out.println(dto1.getAddr()+",,,1,,,"+ dto1.getBdate()+",,,1,,,"+dto1.getEmail());
		SF_join2_dto dto2 = dao2.selectById("123");
		System.out.println(dto2.getAddr()+",,,2,,,"+  dto2.getLinumber()+",,,2,,,"+dto2.getEmail());
		SF_join3_dto dto3 = dao3.selectById("23");
		System.out.println(dto3.getAddr()+",,,3,,,"+ dto3.getGroup()+",,,3,,,"+dto3.getEmail());
	}

}
