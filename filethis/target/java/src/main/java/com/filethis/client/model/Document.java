package com.filethis.client.model;

import com.filethis.client.model.Date-time;
public class Document {
  /* Name of the document (default is typically its filename) */
  private String name = null;
  /* Unique Id of the document. Returned as a string. [RO] */
  private Integer id = null;
  /* Size of the document file in bytes. [RO] */
  private Long size = null;
  /* Whether this is a Pro-Services shared document, or not. [RO] */
  private Boolean shared = null;
  /* MIME type of the document. [RO] */
  private String mimeType = null;
  /* Unique Id of the destination to which the document was delivered. [RO] */
  private Integer destinationId = null;
  /* Unique Id of document's account. Returned as a string. [RO] */
  private Integer accountId = null;
  /* Number of pages in the document. [RO] */
  private Integer pageCount = null;
  /* Kind of document. [RO] */
  private String kind = null;
  /* Delivery state. [RO] */
  private String deliveryState = null;
  //public enum deliveryStateEnum { init, done, }; 
  /* Relevant date of document */
  private date-time relevantDate = null;
  /* The date on which an action can be taken on a document (eg. Credit card payment due). [RO] */
  private date-time actionDate = null;
  /* Date that the document was originally created. [RO] */
  private date-time createdDate = null;
  /* Date that the document was added to FileThis. [RO] */
  private date-time addedDate = null;
  /* Date the document was delivered to its destination. [RO] */
  private date-time deliveredDate = null;
  /* The original name of the document (typically its filename). [RO] */
  private String originalName = null;
  /* Relevant date determined by fetcher. [RO] */
  private date-time originalRelevantDate = null;
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

  public Long getSize() {
    return size;
  }
  public void setSize(Long size) {
    this.size = size;
  }

  public Boolean getShared() {
    return shared;
  }
  public void setShared(Boolean shared) {
    this.shared = shared;
  }

  public String getMimeType() {
    return mimeType;
  }
  public void setMimeType(String mimeType) {
    this.mimeType = mimeType;
  }

  public Integer getDestinationId() {
    return destinationId;
  }
  public void setDestinationId(Integer destinationId) {
    this.destinationId = destinationId;
  }

  public Integer getAccountId() {
    return accountId;
  }
  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  public Integer getPageCount() {
    return pageCount;
  }
  public void setPageCount(Integer pageCount) {
    this.pageCount = pageCount;
  }

  public String getKind() {
    return kind;
  }
  public void setKind(String kind) {
    this.kind = kind;
  }

  public String getDeliveryState() {
    return deliveryState;
  }
  public void setDeliveryState(String deliveryState) {
    this.deliveryState = deliveryState;
  }

  public date-time getRelevantDate() {
    return relevantDate;
  }
  public void setRelevantDate(date-time relevantDate) {
    this.relevantDate = relevantDate;
  }

  public date-time getActionDate() {
    return actionDate;
  }
  public void setActionDate(date-time actionDate) {
    this.actionDate = actionDate;
  }

  public date-time getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(date-time createdDate) {
    this.createdDate = createdDate;
  }

  public date-time getAddedDate() {
    return addedDate;
  }
  public void setAddedDate(date-time addedDate) {
    this.addedDate = addedDate;
  }

  public date-time getDeliveredDate() {
    return deliveredDate;
  }
  public void setDeliveredDate(date-time deliveredDate) {
    this.deliveredDate = deliveredDate;
  }

  public String getOriginalName() {
    return originalName;
  }
  public void setOriginalName(String originalName) {
    this.originalName = originalName;
  }

  public date-time getOriginalRelevantDate() {
    return originalRelevantDate;
  }
  public void setOriginalRelevantDate(date-time originalRelevantDate) {
    this.originalRelevantDate = originalRelevantDate;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Document {\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  size: ").append(size).append("\n");
    sb.append("  shared: ").append(shared).append("\n");
    sb.append("  mimeType: ").append(mimeType).append("\n");
    sb.append("  destinationId: ").append(destinationId).append("\n");
    sb.append("  accountId: ").append(accountId).append("\n");
    sb.append("  pageCount: ").append(pageCount).append("\n");
    sb.append("  kind: ").append(kind).append("\n");
    sb.append("  deliveryState: ").append(deliveryState).append("\n");
    sb.append("  relevantDate: ").append(relevantDate).append("\n");
    sb.append("  actionDate: ").append(actionDate).append("\n");
    sb.append("  createdDate: ").append(createdDate).append("\n");
    sb.append("  addedDate: ").append(addedDate).append("\n");
    sb.append("  deliveredDate: ").append(deliveredDate).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  originalRelevantDate: ").append(originalRelevantDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

