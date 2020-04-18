package com.taike.service.lmpl;

import com.github.pagehelper.PageHelper;
import com.taike.dao.IUserDao;
import com.taike.domain.User;
import com.taike.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private IUserDao iuserDao;

    @Override
    public List<User> findAll(int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        return iuserDao.findAll();
    }

    @Override
    public User findById(int id) {
        return iuserDao.findById(id);
    }

    @Override
    public User findByIdAndStatus(int id) {
        return iuserDao.findByIdAndStatus(id);
    }
    @Override
    public User findByUserName() {
        return iuserDao.findByUserName();
    }

    @Override
    public List<User> findByIf(int page, int pageSize,
                               String username,
                               String real_name,
                               String user_address,
                               String phone,
                               String start_time,
                               String login_time) {
        PageHelper.startPage(page, pageSize);
        return iuserDao.findByIf(username,real_name,user_address,phone,start_time,login_time);
    }

    @Override
    public void saveStatusNormal(int id) {
      iuserDao.saveStatusNormal(id);
    }

    @Override
    public void saveStatusAbnormal(int id) {
      iuserDao.saveStatusAbnormal(id);
    }

    @Override
    public void saveByUserName(String phone,String user_address) {
        iuserDao.saveByUserName(phone,user_address);
    }

}
