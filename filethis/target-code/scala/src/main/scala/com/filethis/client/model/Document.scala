package com.filethis.client.model

import com.filethis.client.model.Date-time
case class Document (
  /* Name of the document (default is typically its filename) */
  name: String,
  /* Unique Id of the document. Returned as a string. [RO] */
  id: Int,
  /* Size of the document file in bytes. [RO] */
  size: Long,
  /* Whether this is a Pro-Services shared document, or not. [RO] */
  shared: Boolean,
  /* MIME type of the document. [RO] */
  mimeType: String,
  /* Unique Id of the destination to which the document was delivered. [RO] */
  destinationId: Int,
  /* Unique Id of document's account. Returned as a string. [RO] */
  accountId: Int,
  /* Number of pages in the document. [RO] */
  pageCount: Int,
  /* Kind of document. [RO] */
  kind: String,
  /* Delivery state. [RO] */
  deliveryState: String,
  /* Relevant date of document */
  relevantDate: date-time,
  /* The date on which an action can be taken on a document (eg. Credit card payment due). [RO] */
  actionDate: date-time,
  /* Date that the document was originally created. [RO] */
  createdDate: date-time,
  /* Date that the document was added to FileThis. [RO] */
  addedDate: date-time,
  /* Date the document was delivered to its destination. [RO] */
  deliveredDate: date-time,
  /* The original name of the document (typically its filename). [RO] */
  originalName: String,
  /* Relevant date determined by fetcher. [RO] */
  originalRelevantDate: date-time)

