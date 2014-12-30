package com.filethis.client.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import com.filethis.client.model.Date-time;
public class Connection {
  /* Human-readable name of the connection. Defaults to that of its source. */
  @JsonProperty("name")
  private String name = null;
  /* The unique Id of the connection. Returned as a string. [RO] */
  @JsonProperty("id")
  private Integer id = null;
  /* The current state of the connection. [RO] */
  @JsonProperty("state")
  private String state = null;
  /* Whether fetches will be done for the connection not */
  @JsonProperty("enabled")
  private Boolean enabled = null;
  /* Information concerning the connection that resulted from the last fetch. [RO] */
  @JsonProperty("info")
  private String info = null;
  /* The connection source's site login password. Base64-encoded. [WO] */
  @JsonProperty("password")
  private String password = null;
  /* The connection source's site login username. Base64-encoded. [WO] */
  @JsonProperty("username")
  private String username = null;
  /* Unique Id of connection's account. Returned as a string. [RO] */
  @JsonProperty("accountId")
  private Integer accountId = null;
  /* Whether the current connection source's site login credentials have been used successfully, or not. [RO] */
  @JsonProperty("validation")
  private String validation = null;
  /* The period of time between automatic fetches. [WO] */
  @JsonProperty("period")
  private String period = null;
  /* The number of new documents downloaded during the last fetch. [RO] */
  @JsonProperty("documentCount")
  private Integer documentCount = null;
  /* Whether all documents should be fetched, or just any new ones */
  @JsonProperty("fetchAll")
  private Boolean fetchAll = null;
  /* Date on which the next fetch attempt will happen. [RO] */
  @JsonProperty("attemptDate")
  private date-time attemptDate = null;
  /* Date when last checked for new documents. [RO] */
  @JsonProperty("checkedDate")
  private date-time checkedDate = null;
  /* Unique Id of connection's document source. Returned as a string. [RO] */
  @JsonProperty("sourceId")
  private Integer sourceId = null;
  /* Date of last successful fetch, whether it returned documents, or not. [RO] */
  @JsonProperty("successDate")
  private date-time successDate = null;
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

  public Boolean getEnabled() {
    return enabled;
  }
  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public String getInfo() {
    return info;
  }
  public void setInfo(String info) {
    this.info = info;
  }

  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }

  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }

  public Integer getAccountId() {
    return accountId;
  }
  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  public String getValidation() {
    return validation;
  }
  public void setValidation(String validation) {
    this.validation = validation;
  }

  public String getPeriod() {
    return period;
  }
  public void setPeriod(String period) {
    this.period = period;
  }

  public Integer getDocumentCount() {
    return documentCount;
  }
  public void setDocumentCount(Integer documentCount) {
    this.documentCount = documentCount;
  }

  public Boolean getFetchAll() {
    return fetchAll;
  }
  public void setFetchAll(Boolean fetchAll) {
    this.fetchAll = fetchAll;
  }

  public date-time getAttemptDate() {
    return attemptDate;
  }
  public void setAttemptDate(date-time attemptDate) {
    this.attemptDate = attemptDate;
  }

  public date-time getCheckedDate() {
    return checkedDate;
  }
  public void setCheckedDate(date-time checkedDate) {
    this.checkedDate = checkedDate;
  }

  public Integer getSourceId() {
    return sourceId;
  }
  public void setSourceId(Integer sourceId) {
    this.sourceId = sourceId;
  }

  public date-time getSuccessDate() {
    return successDate;
  }
  public void setSuccessDate(date-time successDate) {
    this.successDate = successDate;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Connection {\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  enabled: ").append(enabled).append("\n");
    sb.append("  info: ").append(info).append("\n");
    sb.append("  password: ").append(password).append("\n");
    sb.append("  username: ").append(username).append("\n");
    sb.append("  accountId: ").append(accountId).append("\n");
    sb.append("  validation: ").append(validation).append("\n");
    sb.append("  period: ").append(period).append("\n");
    sb.append("  documentCount: ").append(documentCount).append("\n");
    sb.append("  fetchAll: ").append(fetchAll).append("\n");
    sb.append("  attemptDate: ").append(attemptDate).append("\n");
    sb.append("  checkedDate: ").append(checkedDate).append("\n");
    sb.append("  sourceId: ").append(sourceId).append("\n");
    sb.append("  successDate: ").append(successDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

