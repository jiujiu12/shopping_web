package com.taike.dao;

import com.taike.domain.OrderDetail;
import com.taike.domain.User;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IOrderDetailDao {

    @Select("select distinct * from order_detail where order_id=${_parameter} ")
    @Results({
            @Result(property = "user", column ="user_id", javaType = User.class, one = @One(select = "com.taike.dao.IUserDao.findById")),
    })
    public List<OrderDetail> findByOrderId(int id);
}
