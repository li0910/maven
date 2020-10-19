package com.qf.pojo;


import lombok.Data;

@Data
public class Book {

  private Integer id;
  private String bookName;
  private String author;
  private double price;
  private Integer classId;
  private String descr;
  private String path;

//  //自己添加属性用来存储类名
  private String bookClassName;

  private Class aClass;

  public Class getaClass() {
    return aClass;
  }

  public void setaClass(Class aClass) {
    this.aClass = aClass;
  }

  @Override
  public String toString() {
    return "Book{" +
            "id=" + id +
            ", bookName='" + bookName + '\'' +
            ", author='" + author + '\'' +
            ", price=" + price +
            ", classId=" + classId +
            ", descr='" + descr + '\'' +
            ", path='" + path + '\'' +
            ", aClass=" + aClass +
            '}';
  }
}
