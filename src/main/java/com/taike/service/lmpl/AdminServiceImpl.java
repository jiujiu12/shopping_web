package com.taike.service.lmpl;

import com.taike.dao.IAdminDao;
import com.taike.domain.Admin;
import com.taike.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private IAdminDao iAdminDao;
    @Override
    public List<Admin> findAll() {
        System.out.println("Service业务层：查询所有账户...");
        return iAdminDao.findAll();
    }

    @Override
    public void saveAdmin(Admin admin) {

        System.out.println("Service业务层：保存帐户...");
        iAdminDao.saveAdmin(admin);
    }
}
