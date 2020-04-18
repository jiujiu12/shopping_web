package com.taike.service;

import com.taike.domain.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    public List<OrderDetail> findByOrderId(int id,int page, int pageSize);
}
