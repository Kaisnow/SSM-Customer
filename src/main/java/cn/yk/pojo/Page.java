package cn.yk.pojo;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable {

    private int pageSize; //每页显示个数
    private int total; //总个数
    private int pageIndex; //当前页面
    private List<T> beanlist; //当前页面数据

    public Page() {
    }

    public Page(  int pageSize, int total, int pageIndex ) {

        this.pageSize = pageSize;
        this.total = total;
        this.pageIndex = pageIndex;

    }

    public int getPageStar(){
        return (pageIndex-1)*pageSize;
    }

    public int getPageCount() {
        if (total % pageSize != 0) {
            return total / pageSize + 1;
        } else {
            return total/pageSize;
        }
    }
    @Override
    public String toString() {
        return "Page{" +
                ", pageSize=" + pageSize +
                ", total=" + total +
                ", pageIndex=" + pageIndex +
                ", beanlist=" + beanlist +
                '}';
    }



    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public List<T> getBeanlist() {
        return beanlist;
    }

    public void setBeanlist(List<T> beanlist) {
        this.beanlist = beanlist;
    }
}
