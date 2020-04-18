package com.taike.service;

import com.taike.domain.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderService {
    public List<Order> findAll(int page, int pageSize);
    public Order findById(int id);
    public List<Order> findByIf(int page, int pageSize,
                               String order_no,
                               String headman_id,
                                String start_time,
                                String end_time

    );
    public Order saveNew(String id,
                         String start_time,
                         String end_time,
                         String order_price,
                         String order_status,
                         String headman_id,
                         String goods_id);
}
