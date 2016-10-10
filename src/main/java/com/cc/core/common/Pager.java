package com.cc.core.common;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public class Pager {
    private int currentPage;
    private int pageTotal;
    private int currentRows;//当前页记录数
    private int rowTotal;
    private List<?> list;

    public Pager() {
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(int pageTotal) {
        this.pageTotal = pageTotal;
    }

    public int getCurrentRows() {
        return currentRows;
    }

    public void setCurrentRows(int currentRows) {
        this.currentRows = currentRows;
    }

    public int getRowTotal() {
        return rowTotal;
    }

    public void setRowTotal(int rowTotal) {
        this.rowTotal = rowTotal;
    }

    public List<?> getList() {
        return list;
    }

    public void setList(List<?> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Pager{" +
                "currentPage=" + currentPage +
                ", pageTotal=" + pageTotal +
                ", currentRows=" + currentRows +
                ", rowTotal=" + rowTotal +
                ", list=" + list +
                '}';
    }
}
