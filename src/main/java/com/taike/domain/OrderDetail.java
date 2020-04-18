package com.taike.domain;

import java.math.BigDecimal;

public class OrderDetail {
    private int id;
    private int user_id;
    private int order_id;
    private int num;
    private BigDecimal price;
    private int spe_id;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getSpe_id() {
        return spe_id;
    }

    public void setSpe_id(int spe_id) {
        this.spe_id = spe_id;
    }
}
