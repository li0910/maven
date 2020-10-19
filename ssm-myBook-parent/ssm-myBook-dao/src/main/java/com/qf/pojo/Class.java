package com.qf.pojo;


public class Class {

  private Integer id;
  private String name;
  private String descr;

  @Override
  public String toString() {
    return "Class{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", descr='" + descr + '\'' +
            '}';
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getDescr() {
    return descr;
  }

  public void setDescr(String descr) {
    this.descr = descr;
  }

}
