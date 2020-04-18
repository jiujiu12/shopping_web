package com.taike.domain;

import com.taike.utils.DateUtils;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private int id;
    private Date order_time;
    private Date start_time;
    private Date end_time;
    private String orderTimeStr;
    private BigDecimal order_price;
    private int headman_id;
    private Headman headman;
    private User user;
    private int order_status;
    private String orderStatusStr;
    private String order_no;
    private Goods goods;
    private int goods_id;
    private int addr_id;

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrder_time() {

        return order_time;
    }

    public void setOrder_time(Date order_time) {
        this.order_time = order_time;
    }

    public String getOrderTimeStr() {
        if(order_time!=null){
            orderTimeStr= DateUtils.date2String(order_time,"yyyy年MM月dd日");
        }
        return orderTimeStr;
    }

    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }

    public BigDecimal getOrder_price() {
        return order_price;
    }

    public void setOrder_price(BigDecimal order_price) {
        this.order_price = order_price;
    }

    public int getHeadman_id() {
        return headman_id;
    }

    public void setHeadman_id(int headman_id) {
        this.headman_id = headman_id;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    public String getOrderStatusStr() {
        if(order_status==0){
            orderStatusStr="待发货";
        }
        else if(order_status==1){
            orderStatusStr="待收货";
        }
        else if(order_status==2){
            orderStatusStr="已完成";
        }
        else if(order_status==3){
            orderStatusStr="待退款";
        }
        return orderStatusStr;
    }

    public void setOrderStatusStr(String orderStatusStr) {
        this.orderStatusStr = orderStatusStr;
    }

    public String getOrder_no() {
        return order_no;
    }

    public void setOrder_no(String order_no) {
        this.order_no = order_no;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getAddr_id() {
        return addr_id;
    }

    public void setAddr_id(int addr_id) {
        this.addr_id = addr_id;
    }

    public Headman getHeadman() {
        return headman;
    }

    public void setHeadman(Headman headman) {
        this.headman = headman;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
