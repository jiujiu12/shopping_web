package com.taike.service;

import com.taike.domain.Admin;

import java.util.List;

public interface AdminService {
//    查询所有账户
    public List<Admin> findAll();

    // 保存帐户信息
    public void saveAdmin(Admin admin);
}
