package com.filethis.client.model;

public class Destination {
  /* Human-readable name of the destination. [RO] */
  private String name = null;
  /* Unique Id for the destination. [RO] */
  private Integer id = null;
  /* Whether the destination is exposed to the public or not. [RO] */
  private String state = null;
  //public enum stateEnum { hold, live, }; 
  /* Type of destination (FileThis Cloud, external provider, or FileThis desktop). [RO] */
  private String type = null;
  //public enum typeEnum { host, conn, locl, }; 
  /* The storage provider. [RO] */
  private String provider = null;
  //public enum providerEnum { this, ever, enbz, drop, gdrv, pers, box , aone, neat, amcd, svlt, }; 
  /* Filename of provider's company logo. [RO] */
  private String logo = null;
  /* Link to the provider's website. [RO] */
  private String url = null;
  /* URL for FileThis help page that describes the destination. [RO] */
  private String helpUrl = null;
  /* Application Id for iOS mobile app. [RO] */
  private String iosAppId = null;
  /* Application Id for Android mobile app. [RO] */
  private String androidAppId = null;
  /* Default web page for mobile app store. [RO] */
  private String appUrl = null;
  /* An ordinal number that suggests a preferred order for display to users. [RO] */
  private Integer ordinal = null;
  /* URL of destination's company logo. [RO] */
  private String logoUrl = null;
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

  public String getProvider() {
    return provider;
  }
  public void setProvider(String provider) {
    this.provider = provider;
  }

  public String getLogo() {
    return logo;
  }
  public void setLogo(String logo) {
    this.logo = logo;
  }

  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  public String getHelpUrl() {
    return helpUrl;
  }
  public void setHelpUrl(String helpUrl) {
    this.helpUrl = helpUrl;
  }

  public String getIosAppId() {
    return iosAppId;
  }
  public void setIosAppId(String iosAppId) {
    this.iosAppId = iosAppId;
  }

  public String getAndroidAppId() {
    return androidAppId;
  }
  public void setAndroidAppId(String androidAppId) {
    this.androidAppId = androidAppId;
  }

  public String getAppUrl() {
    return appUrl;
  }
  public void setAppUrl(String appUrl) {
    this.appUrl = appUrl;
  }

  public Integer getOrdinal() {
    return ordinal;
  }
  public void setOrdinal(Integer ordinal) {
    this.ordinal = ordinal;
  }

  public String getLogoUrl() {
    return logoUrl;
  }
  public void setLogoUrl(String logoUrl) {
    this.logoUrl = logoUrl;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Destination {\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  provider: ").append(provider).append("\n");
    sb.append("  logo: ").append(logo).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  helpUrl: ").append(helpUrl).append("\n");
    sb.append("  iosAppId: ").append(iosAppId).append("\n");
    sb.append("  androidAppId: ").append(androidAppId).append("\n");
    sb.append("  appUrl: ").append(appUrl).append("\n");
    sb.append("  ordinal: ").append(ordinal).append("\n");
    sb.append("  logoUrl: ").append(logoUrl).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

