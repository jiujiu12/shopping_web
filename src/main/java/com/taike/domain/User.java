package com.taike.domain;

import com.taike.utils.DateUtils;

import java.util.Date;

public class User {
    private int Id;
    private String username;
    private String password;
    private String real_name;
    private String phone;
    private int account_status;
    private String accountStatusStr;
    private int apply_status;
    private String applyStatusStr;
    private String user_address;
    private Date login_time;
    private String loginTimeStr;

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAccount_status() {
        return account_status;
    }

    public void setAccount_status(int accountStatus) {
        this.account_status = accountStatus;
    }

    public String getAccountStatusStr() {
        if(account_status==0){
            accountStatusStr="待审核";
        }else if(account_status==1){
            accountStatusStr="正常";
        }
        else if(account_status==2){
            accountStatusStr="禁用";
        }
        return accountStatusStr;
    }

    public void setAccountStatusStr(String accountStatusStr) {
        this.accountStatusStr = accountStatusStr;
    }

    public int getApplyStatus() {

        return apply_status;
    }

    public void setApply_status(int applyStatus) {
        this.apply_status = applyStatus;
    }

    public String getApplyStatusStr() {
        if(apply_status==0){
            applyStatusStr="未通过";
        }
        else if(apply_status==1){
            applyStatusStr="通过";
        }
        return applyStatusStr;
    }

    public void setApplyStatusStr(String applyStatusStr) {
        this.applyStatusStr = applyStatusStr;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String userAddress) {
        this.user_address = userAddress;
    }

    public Date getLogin_time() {
        return login_time;
    }

    public void setLogin_time(Date loginTime) {
        this.login_time = loginTime;
    }

    public String getLoginTimeStr() {
        if(login_time!=null){
            loginTimeStr= DateUtils.date2String(login_time,"yyyy年MM月dd日");
        }
        return loginTimeStr;
    }

    public void setLoginTimeStr(String loginTimeStr) {
        this.loginTimeStr = loginTimeStr;
    }
}
