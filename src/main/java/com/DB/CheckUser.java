package com.DB;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dto.RegisterLogin;

public class CheckUser {
	public boolean validate(String username,String password)
	{
		Transaction ts = null;
		RegisterLogin register = null;
		try(Session ss = Factory.getFactory().openSession()){
			ts = ss.beginTransaction();
 			register = (RegisterLogin) ss.createQuery("from RegisterLogin where uid =:username").setParameter("username",username).uniqueResult();
            if(register != null && register.getPass().equals(password)) {
            	return true;
            }
            ts.commit();
		}catch(Exception e) {
			if(ts != null) {
				ts.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}
}
