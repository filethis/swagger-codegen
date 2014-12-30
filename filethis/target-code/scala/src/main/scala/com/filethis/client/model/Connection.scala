package com.filethis.client.model

import com.filethis.client.model.Date-time
case class Connection (
  /* Human-readable name of the connection. Defaults to that of its source. */
  name: String,
  /* The unique Id of the connection. Returned as a string. [RO] */
  id: Int,
  /* The current state of the connection. [RO] */
  state: String,
  /* Whether fetches will be done for the connection not */
  enabled: Boolean,
  /* Information concerning the connection that resulted from the last fetch. [RO] */
  info: String,
  /* The connection source's site login password. Base64-encoded. [WO] */
  password: String,
  /* The connection source's site login username. Base64-encoded. [WO] */
  username: String,
  /* Unique Id of connection's account. Returned as a string. [RO] */
  accountId: Int,
  /* Whether the current connection source's site login credentials have been used successfully, or not. [RO] */
  validation: String,
  /* The period of time between automatic fetches. [WO] */
  period: String,
  /* The number of new documents downloaded during the last fetch. [RO] */
  documentCount: Int,
  /* Whether all documents should be fetched, or just any new ones */
  fetchAll: Boolean,
  /* Date on which the next fetch attempt will happen. [RO] */
  attemptDate: date-time,
  /* Date when last checked for new documents. [RO] */
  checkedDate: date-time,
  /* Unique Id of connection's document source. Returned as a string. [RO] */
  sourceId: Int,
  /* Date of last successful fetch, whether it returned documents, or not. [RO] */
  successDate: date-time)

