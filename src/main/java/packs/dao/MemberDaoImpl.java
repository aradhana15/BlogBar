package packs.dao;

import packs.model.Register;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDaoImpl implements MemberDaoInterface{
	@Autowired
	SessionFactory sfac;
	Session sess;
	public MemberDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	public int addNewMember(Register rob)
	{
		sess=sfac.openSession();
		Transaction t=sess.beginTransaction();
		sess.save(rob);
		t.commit();
		return 1;
	}

}
