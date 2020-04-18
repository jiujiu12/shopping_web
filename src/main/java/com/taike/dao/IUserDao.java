package com.taike.dao;

import com.taike.domain.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {
    @Select("select * from account where 1=1")
    public List<User> findAll();

    @Select("select * from account where id=${_parameter}")
    public User findById(int id);

    @Select("select a.* from account a,complain c where a.id=c.user_id and a.id=${_parameter} and a.account_status=0")
    public User findByIdAndStatus(@Param("id")int id);

    @Select("<script>"
            +"select * from account where 1=1"
            +"<if test='start_time!=null&amp;&amp;!start_time.isEmpty()'>"
            +"and login_time &gt;= '${start_time}'"
            +"</if>"
            +"<if test='login_time!=null&amp;&amp;!login_time.isEmpty()'>"
            +"and login_time &lt;= '${login_time}'"
            +"</if>"
            +"<if test='username!=null&amp;&amp;!username.isEmpty()'>"
            +"and username like '%${username}%'"
            +"</if>"
            +"<if test='real_name!=null&amp;&amp;!real_name.isEmpty()'>"
            +"and real_name like '%${real_name}%'"
            +"</if>"
            +"<if test='user_address!=null&amp;&amp;!user_address.isEmpty()'>"
            +"and user_address like '%${user_address}%'"
            +"</if>"
            +"<if test='phone!=null&amp;&amp;!phone.isEmpty()'>"
            +"and phone like '%${phone}%'"
            +"</if>"
            +"</script>"
    )
    public List<User> findByIf(@Param("username") String username,
                               @Param("real_name") String real_name,
                               @Param("user_address") String user_address,
                               @Param("phone") String phone,
                               @Param("start_time") String start_time,
                               @Param("login_time") String login_time

    );
    @Select("select * from account where username='阿信'")
    public User findByUserName();

    @Update("update account set account_status=1 where id=${_parameter}")
    public void saveStatusNormal(int id);

    @Update("update account set account_status=2 where id=${_parameter}")
    public void saveStatusAbnormal(int id);

    @Update("update account set phone='${phone}',user_address='${user_address}'" +
            " where id=1")
    public void saveByUserName(@Param("phone") String phone,
                               @Param("user_address") String user_address
                               );




}
