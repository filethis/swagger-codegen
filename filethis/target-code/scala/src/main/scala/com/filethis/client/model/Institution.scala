package com.filethis.client.model

import com.filethis.client.model.Date-time
case class Institution (
  /* Human-readable name of the source. [RO] */
  name: String,
  /* The unique Id of the source. [RO] */
  id: Int,
  /* Whether the source is enabled for fetching, or not. [RO] */
  state: String,
  /* The type of institution. [RO] */
  `type`: String,
  /* A string to be displayed to users that gives special instructions. [RO] */
  info: String,
  /* An integer representing the relative popularity of this source. [RO] */
  popularity: Int,
  /* Link for the home page of the source's website. [RO] */
  homePageUrl: String,
  /* A phone number for the source institution. [RO] */
  phone: String,
  /* Filename of institution's company logo. [RO] */
  logo: String,
  /* The 'financial institution id' for the source. [RO] */
  fid: String,
  /* URL of institution's company logo. [RO] */
  logoUrl: String,
  /* Date that the source was added to FileThis. [RO] */
  addedDate: date-time)

