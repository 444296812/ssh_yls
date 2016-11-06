package com.zh.ssh.entity;

import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2016/11/1 0001.
 */
public class ColumnEntity {
    private Integer id;
    private String conlumnName;
//    private Set<Ylxs> ylxs;

    public ColumnEntity() {
    }

//    public ColumnEntity(Integer id, String conlumnName, Set<Ylxs> ylxs) {
//        this.id = id;
//        this.conlumnName = conlumnName;
//        this.ylxs = ylxs;
//    }

    public ColumnEntity(Integer id, String conlumnName) {
        this.id = id;
        this.conlumnName = conlumnName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConlumnName() {
        return conlumnName;
    }

    public void setConlumnName(String conlumnName) {
        this.conlumnName = conlumnName;
    }

//    public Set<Ylxs> getYlxs() {
//        return ylxs;
//    }
//
//    public void setYlxs(Set<Ylxs> ylxs) {
//        this.ylxs = ylxs;
//    }


}
