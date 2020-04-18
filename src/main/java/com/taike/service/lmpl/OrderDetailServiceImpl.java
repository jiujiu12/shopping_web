package com.taike.service.lmpl;

import com.github.pagehelper.PageHelper;
import com.taike.dao.IOrderDetailDao;
import com.taike.domain.OrderDetail;
import com.taike.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService {
    @Autowired
    private IOrderDetailDao iOrderDetailDao;
    @Override
    public List<OrderDetail> findByOrderId(int id, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        return iOrderDetailDao.findByOrderId(id);
    }
}
