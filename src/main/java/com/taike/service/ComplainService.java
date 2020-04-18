package com.taike.service;

import com.taike.domain.Complain;

import java.util.List;

public interface ComplainService {
    public List<Complain> findAll(int page, int pageSize);
}
