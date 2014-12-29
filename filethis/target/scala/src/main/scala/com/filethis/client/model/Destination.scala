package com.filethis.client.model

case class Destination (
  /* Human-readable name of the destination. [RO] */
  name: String,
  /* Unique Id for the destination. [RO] */
  id: Int,
  /* Whether the destination is exposed to the public or not. [RO] */
  state: String,
  /* Type of destination (FileThis Cloud, external provider, or FileThis desktop). [RO] */
  `type`: String,
  /* The storage provider. [RO] */
  provider: String,
  /* Filename of provider's company logo. [RO] */
  logo: String,
  /* Link to the provider's website. [RO] */
  url: String,
  /* URL for FileThis help page that describes the destination. [RO] */
  helpUrl: String,
  /* Application Id for iOS mobile app. [RO] */
  iosAppId: String,
  /* Application Id for Android mobile app. [RO] */
  androidAppId: String,
  /* Default web page for mobile app store. [RO] */
  appUrl: String,
  /* An ordinal number that suggests a preferred order for display to users. [RO] */
  ordinal: Int,
  /* URL of destination's company logo. [RO] */
  logoUrl: String)

