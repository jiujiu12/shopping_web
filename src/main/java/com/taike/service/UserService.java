package com.taike.service;

import com.taike.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    public List<User> findAll(int page, int pageSize);
    public User findById(int id);
    public User findByUserName();
    public User findByIdAndStatus(int id);
    public List<User> findByIf(int page, int pageSize,
                               String username,
                               String real_name,
                               String user_address,
                               String phone,
                               String start_time,
                               String login_time
                               );
    public void saveStatusNormal(int id);
    public void saveStatusAbnormal(int id);
    public void saveByUserName(String phone,String user_address);
}
