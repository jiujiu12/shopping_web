package com.taike.dao;

import com.taike.domain.Headman;
import com.taike.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeadmanDao {
    @Select("select distinct h.* from headman h,user_order u,account a where h.id=u.headman_id and h.user_id=a.id")
    public List<Headman> findAll();

    @Select("select distinct * from headman where id=${_parameter}")
    @Results({
            @Result(property = "user", column ="user_id", javaType = User.class, one = @One(select = "com.taike.dao.IUserDao.findById")),
    })
    public Headman findById(int id);
}
