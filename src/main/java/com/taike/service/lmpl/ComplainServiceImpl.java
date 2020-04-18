package com.taike.service.lmpl;

import com.github.pagehelper.PageHelper;
import com.taike.dao.IComplainDao;
import com.taike.domain.Complain;
import com.taike.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("complainService")
public class ComplainServiceImpl implements ComplainService {
    @Autowired
    private IComplainDao iComplainDao;

    @Override
    public List<Complain> findAll(int page,int pageSize){
        PageHelper.startPage(page, pageSize);
        return iComplainDao.findAll();
    }
}
