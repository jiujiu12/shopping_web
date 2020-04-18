package com.taike.service.lmpl;

import com.github.pagehelper.PageHelper;
import com.taike.dao.IOrderDao;
import com.taike.domain.Order;
import com.taike.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private IOrderDao iOrderDao;

    @Override
    public List<Order> findAll(int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        return iOrderDao.findAll();
    }

    @Override
    public Order findById(int id) {
        return iOrderDao.findById(id);
    }

    @Override
    public List<Order> findByIf(int page, int pageSize,
                                String order_no,
                                String headman_id,
                                String start_time,
                                String end_time) {
        PageHelper.startPage(page, pageSize);
        return iOrderDao.findByIf(order_no,headman_id,start_time,end_time);
    }

    @Override
    public Order saveNew(String id, String start_time, String end_time, String order_price, String order_status, String headman_id, String goods_id) {
        return iOrderDao.saveNew(id,start_time,end_time,order_price,order_status,headman_id,goods_id);
    }

}
