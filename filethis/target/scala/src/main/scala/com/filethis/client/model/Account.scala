package com.filethis.client.model

import com.filethis.client.model.Date-time
case class Account (
  /* Unique Id. Returned as a string. [RO] */
  id: Int,
  /* FileThis account type. [RO] */
  `type`: String,
  /* FileThis account level. [RO] */
  level: String,
  /* FileThis account password. [WO] */
  password: String,
  /* User email (Also used for FileThis login). */
  email: String,
  /* Unique Id of account's Content Delivery Partner. Returned as a string. [RO] */
  partnerId: Int,
  /* Unique Id of Pro-Service. [RO] */
  proServiceId: Int,
  /* User's first name */
  firstName: String,
  /* Flag to enable/disable session timeout */
  useTimeout: Boolean,
  /* Session timeout duration */
  timeoutMinutes: Int,
  /* User's last name */
  lastName: String,
  /* Whether to automatically classify (tag) fetched documents, or not. */
  autoClassify: Boolean,
  /* Send email when a fetch succeeds */
  emailSuccess: Boolean,
  /* Send email when a fetch fails */
  emailFailure: Boolean,
  /* Flag to subscribe/unsubscribe from marketing emails */
  emailCampaign: Boolean,
  /* Internal FileThis feature flags. Base64-encoded. [RO] */
  features: String,
  releaseDestinations: List[String],
  /* Subscription plan. [RO] */
  plan: String,
  /* Number of 'add-on' packages purchased. [RO] */
  addons: Int,
  /* Number of 'add-on' packages upon renewal. [RO] */
  pendingAddons: Int,
  /* Subscription plan on renewal. [RO] */
  pendingPlan: String,
  /* Does the account's subscription plan renew?. [RO] */
  renews: Boolean,
  featuresAsMap: Any,
  /* Additional source connections from add-ons. [RO] */
  addOnSourceConnectionQuota: Int,
  /* Additional storage from add-ons in Kilobytes. [RO] */
  addOnStorageQuota: Int,
  /* Pro-Services branding logo. [RO] */
  brandingLogoUrl: String,
  /* Pro-Services branding name. [RO] */
  brandingName: String,
  /* Date created. [RO] */
  createdDate: date-time,
  /* Date that the user's subscription plan expires. [RO] */
  expiresDate: date-time,
  /* Unique Id given to account by Content Delivery Partner. [RO] */
  partnerAccountId: String,
  /* Date payment made for subscription plan. [RO] */
  paymentDate: date-time,
  /* Source connection quota for pending plan. [RO] */
  pendingPlanSourceConnectionQuota: Int,
  /* Storage quota for pending plan in Kilobytes. [RO] */
  pendingPlanStorageQuota: Int,
  /* IP address of user's previous login. [RO] */
  priorClientIp: Int,
  /* Date of user's previous login. [RO] */
  priorLoginDate: Int,
  /* Connection quota from referrals. [RO] */
  referralSourceConnectionQuota: Int,
  /* Storage quota from referrals in Kilobytes. [RO] */
  referralStorageQuota: Int,
  /* Connection quota from subscription. [RO] */
  subscriptionSourceConnectionQuota: Int,
  /* Storage quota from subscription in Kilobytes. [RO] */
  subscriptionStorageQuota: Int,
  /* Link for user to share FileThis. [RO] */
  socialMediaUrl: String,
  /* Total storage quota for account in Kilobytes. [RO] */
  totalStorageQuota: Int,
  /* Total storage usage by account in Kilobytes. [RO] */
  totalStorageUsage: Int,
  /* Total source connection quota for account. [RO] */
  totalSourceConnectionQuota: Int,
  /* Total storage quota for account. [RO] */
  totalSourceConnectionUsage: Int,
  /* Upload email address [RO] */
  uploadEmail: String,
  /* Upload user name */
  uploadUsername: String)

