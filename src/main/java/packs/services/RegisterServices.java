package packs.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import packs.dao.MemberDaoImpl;
import packs.model.Register;
@Service
public class RegisterServices {
	@Autowired
	MemberDaoImpl r;
	public int addNewMember(Register rob)
	{
		int x=r.addNewMember(rob);
		return x;
	}

}
