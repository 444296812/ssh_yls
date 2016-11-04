package com.zh.ssh.entity;

/**
 * Created by DELL on 2016/9/28.
 */
public class OrdersEntiy {
    private int ticketId;
    private String ticketName;
    private double ticketPrice;
    private int ticketNum;
    private double ticketTotal;
    private double total;

    public OrdersEntiy() {
    }

    public OrdersEntiy(int ticketId, String ticketName, double ticketPrice, int ticketNum, double ticketTotal) {
        this.ticketId = ticketId;
        this.ticketName = ticketName;
        this.ticketPrice = ticketPrice;
        this.ticketNum = ticketNum;
        this.ticketTotal = ticketTotal;
    }

    public OrdersEntiy(int ticketId, String ticketName, double ticketPrice, int ticketNum, double ticketTotal, double total) {
        this.ticketId = ticketId;
        this.ticketName = ticketName;
        this.ticketPrice = ticketPrice;
        this.ticketNum = ticketNum;
        this.ticketTotal = ticketTotal;
        this.total = total;
    }

    public int getTicketId() {
        return ticketId;
    }

    public void setTicketId(int ticketId) {
        this.ticketId = ticketId;
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
