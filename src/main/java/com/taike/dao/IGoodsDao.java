package com.taike.dao;

import com.taike.domain.Goods;
import org.apache.ibatis.annotations.Select;

public interface IGoodsDao {
    @Select("select distinct * from goods where id=${_parameter}")
    public Goods findById(int id);
}
