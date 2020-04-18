package com.taike.dao;

import com.taike.domain.Goods;
import com.taike.domain.Headman;
import com.taike.domain.Order;
import com.taike.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface IOrderDao {
    @Select("select u.id,u.order_no,u.order_status,u.end_time,u.order_price,u.headman_id \n" +
            "from user_order u inner join headman h\n" +
            "on u.headman_id=h.id\n" +
            "inner join account a\n" +
            "on h.user_id=a.ID\n")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "headman", column ="headman_id", javaType = Headman.class, one = @One(select = "com.taike.dao.IHeadmanDao.findById")),
            @Result(property = "order_no", column = "order_no"),
            @Result(property = "order_status", column = "order_status"),
            @Result(property = "order_time", column = "end_time"),
            @Result(property = "order_price", column = "order_price"),
    })
    public List<Order> findAll();

    @Select("select u.id,u.order_no,u.order_status,u.end_time,u.order_price,u.headman_id,u.goods_id \n" +
            "from user_order u inner join headman h\n" +
            "on u.headman_id=h.id\n" +
            "inner join account a\n" +
            "on h.user_id=a.ID \n" +
            "where u.id=${_parameter}\n")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "headman", column ="headman_id", javaType = Headman.class, one = @One(select = "com.taike.dao.IHeadmanDao.findById")),
            @Result(property = "goods", column ="goods_id", javaType = Goods.class, one = @One(select = "com.taike.dao.IGoodsDao.findById")),
            @Result(property = "order_no", column = "order_no"),
            @Result(property = "order_status", column = "order_status"),
            @Result(property = "order_time", column = "end_time"),
            @Result(property = "order_price", column = "order_price"),
    })
    public Order findById(int id);

    @Select("<script>"
            +"select u.id,u.order_no,u.order_status,u.end_time,u.order_price,u.headman_id,u.goods_id \n" +
            "from user_order u inner join headman h\n" +
            "on u.headman_id=h.id\n" +
            "inner join account a\n" +
            "on h.user_id=a.ID \n" +
            "where 1=1\n"
            +"<if test='start_time!=null&amp;&amp;!start_time.isEmpty()'>"
            +"and end_time &gt;= '${start_time}'"
            +"</if>"
            +"<if test='end_time!=null&amp;&amp;!end_time.isEmpty()'>"
            +"and end_time &lt;= '${end_time}'"
            +"</if>"
            +"<if test='order_no!=null&amp;&amp;!order_no.isEmpty()'>"
            +"and u.order_no like '%${order_no}%'"
            +"</if>"
            +"<if test='headman_id!=null&amp;&amp;!headman_id.isEmpty()'>"
            +"and u.headman_id like '%${headman_id}%'"
            +"</if>"
            +"</script>"
    )
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "headman", column ="headman_id", javaType = Headman.class, one = @One(select = "com.taike.dao.IHeadmanDao.findById")),
            @Result(property = "order_no", column = "order_no"),
            @Result(property = "order_status", column = "order_status"),
            @Result(property = "order_time", column = "end_time"),
            @Result(property = "order_price", column = "order_price"),
    })
    public List<Order> findByIf(@Param("order_no") String order_no,
                               @Param("headman_id") String headman_id,
                               @Param("start_time") String start_time,
                               @Param("end_time") String end_time
    );
    @Insert("insert into user_order(id,start_time," +
            "end_time,order_price," +
            "order_status,headman_id,goods_id)\n" +
            "value(${id},'${start_time}'," +
            "'${end_time}',${order_price}," +
            "${order_status},${headman_id},${goods_id})")
    public Order saveNew(@Param("id") String id,
                         @Param("start_time") String start_time,
                         @Param("end_time") String end_time,
                         @Param("order_price") String order_price,
                         @Param("order_status") String order_status,
                         @Param("headman_id") String headman_id,
                         @Param("goods_id") String goods_id
        );


}
