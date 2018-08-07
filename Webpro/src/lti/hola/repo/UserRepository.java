package lti.hola.repo;

import lti.hola.bean.ForgetBean;
import lti.hola.bean.LoginBean;
import lti.hola.bean.RegisterBean;
/**
 * Repository interface for variety of databases
 * @author AE206_PC7
 *@version 1.0
 */
public interface UserRepository {

RegisterBean authenticate(LoginBean login);
	
	boolean validate(ForgetBean forget);
	
	boolean persist(RegisterBean register);
	
	boolean changePassword(LoginBean login);
}
