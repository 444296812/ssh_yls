package com.zh.ssh.entity;

/**
 * Created by Administrator on 2016/9/28 0028.
 */
public class ListEntity {
    private int useID;//用户编号 ----该信息也加入后台管理加入
    private String useName;//用户姓名----
    private String usePapers;//用户证件----
    private String usePhone;//用户电话----
    private String ticketName;//票务----
    private double ticketPrice;//票价----
    private int ticketNum;//数量----
    private double ticketTotal;//总价-----
    private String orderNum;   //订单号-----

    public ListEntity() {
    }


    public ListEntity(int useID, String useName, String usePapers, String usePhone, String ticketName, double ticketPrice, int ticketNum, double ticketTotal, String orderNum) {
        this.useID = useID;
        this.useName = useName;
        this.usePapers = usePapers;
        this.usePhone = usePhone;
        this.ticketName = ticketName;
        this.ticketPrice = ticketPrice;
        this.ticketNum = ticketNum;
        this.ticketTotal = ticketTotal;
        this.orderNum = orderNum;
    }

    public int getUseID() {
        return useID;
    }

    public void setUseID(int useID) {
        this.useID = useID;
    }

    public String getUseName() {
        return useName;
    }

    public void setUseName(String useName) {
        this.useName = useName;
    }

    public String getUsePapers() {
        return usePapers;
    }

    public void setUsePapers(String usePapers) {
        this.usePapers = usePapers;
    }

    public String getUsePhone() {
        return usePhone;
    }

    public void setUsePhone(String usePhone) {
        this.usePhone = usePhone;
    }

    public String getTicketName() {
        return ticketName;
    }

    public void setTicketName(String ticketName) {
        this.ticketName = ticketName;
    }

    public double getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(double ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public int getTicketNum() {
        return ticketNum;
    }

    public void setTicketNum(int ticketNum) {
        this.ticketNum = ticketNum;
    }

    public double getTicketTotal() {
        return ticketTotal;
    }

    public void setTicketTotal(double ticketTotal) {
        this.ticketTotal = ticketTotal;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }
}
