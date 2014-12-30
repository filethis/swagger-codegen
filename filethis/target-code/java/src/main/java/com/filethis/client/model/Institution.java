package com.filethis.client.model;

import com.filethis.client.model.Date-time;
public class Institution {
  /* Human-readable name of the source. [RO] */
  private String name = null;
  /* The unique Id of the source. [RO] */
  private Integer id = null;
  /* Whether the source is enabled for fetching, or not. [RO] */
  private String state = null;
  //public enum stateEnum { hold, live, }; 
  /* The type of institution. [RO] */
  private String type = null;
  //public enum typeEnum { fina, util, }; 
  /* A string to be displayed to users that gives special instructions. [RO] */
  private String info = null;
  /* An integer representing the relative popularity of this source. [RO] */
  private Integer popularity = null;
  /* Link for the home page of the source's website. [RO] */
  private String homePageUrl = null;
  /* A phone number for the source institution. [RO] */
  private String phone = null;
  /* Filename of institution's company logo. [RO] */
  private String logo = null;
  /* The 'financial institution id' for the source. [RO] */
  private String fid = null;
  /* URL of institution's company logo. [RO] */
  private String logoUrl = null;
  /* Date that the source was added to FileThis. [RO] */
  private date-time addedDate = null;
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  public String getState() {
    return state;
  }
  public void setState(String state) {
    this.state = state;
  }

  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  public String getInfo() {
    return info;
  }
  public void setInfo(String info) {
    this.info = info;
  }

  public Integer getPopularity() {
    return popularity;
  }
  public void setPopularity(Integer popularity) {
    this.popularity = popularity;
  }

  public String getHomePageUrl() {
    return homePageUrl;
  }
  public void setHomePageUrl(String homePageUrl) {
    this.homePageUrl = homePageUrl;
  }

  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getLogo() {
    return logo;
  }
  public void setLogo(String logo) {
    this.logo = logo;
  }

  public String getFid() {
    return fid;
  }
  public void setFid(String fid) {
    this.fid = fid;
  }

  public String getLogoUrl() {
    return logoUrl;
  }
  public void setLogoUrl(String logoUrl) {
    this.logoUrl = logoUrl;
  }

  public date-time getAddedDate() {
    return addedDate;
  }
  public void setAddedDate(date-time addedDate) {
    this.addedDate = addedDate;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Institution {\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  info: ").append(info).append("\n");
    sb.append("  popularity: ").append(popularity).append("\n");
    sb.append("  homePageUrl: ").append(homePageUrl).append("\n");
    sb.append("  phone: ").append(phone).append("\n");
    sb.append("  logo: ").append(logo).append("\n");
    sb.append("  fid: ").append(fid).append("\n");
    sb.append("  logoUrl: ").append(logoUrl).append("\n");
    sb.append("  addedDate: ").append(addedDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

