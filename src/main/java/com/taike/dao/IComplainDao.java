package com.taike.dao;

import com.taike.domain.Complain;
import com.taike.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IComplainDao {
    @Select("select c.* from complain c,account a where c.user_id=a.id and a.account_status=0")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "user", column ="user_id", javaType = User.class, one = @One(select = "com.taike.dao.IUserDao.findByIdAndStatus")),
            @Result(property = "reason", column = "reason"),
    })
    public List<Complain> findAll();

}
