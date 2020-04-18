package com.taike.dao;

import com.taike.domain.Admin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface IAdminDao {
    @Select("select * from u_admin")
    public List<Admin> findAll();
    @Insert("insert into u_admin(username,password,real_name,phone) values(#{username},#{password},#{real_name},#{phone})")
    public void saveAdmin(Admin admin);
}
