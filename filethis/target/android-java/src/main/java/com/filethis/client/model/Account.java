package com.filethis.client.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.*;
import com.filethis.client.model.Date-time;
import com.filethis.client.model.Object;
public class Account {
  /* Unique Id. Returned as a string. [RO] */
  @JsonProperty("id")
  private Integer id = null;
  /* FileThis account type. [RO] */
  @JsonProperty("type")
  private String type = null;
  /* FileThis account level. [RO] */
  @JsonProperty("level")
  private String level = null;
  /* FileThis account password. [WO] */
  @JsonProperty("password")
  private String password = null;
  /* User email (Also used for FileThis login). */
  @JsonProperty("email")
  private String email = null;
  /* Unique Id of account's Content Delivery Partner. Returned as a string. [RO] */
  @JsonProperty("partnerId")
  private Integer partnerId = null;
  /* Unique Id of Pro-Service. [RO] */
  @JsonProperty("proServiceId")
  private Integer proServiceId = null;
  /* User's first name */
  @JsonProperty("firstName")
  private String firstName = null;
  /* Flag to enable/disable session timeout */
  @JsonProperty("useTimeout")
  private Boolean useTimeout = null;
  /* Session timeout duration */
  @JsonProperty("timeoutMinutes")
  private Integer timeoutMinutes = null;
  /* User's last name */
  @JsonProperty("lastName")
  private String lastName = null;
  /* Whether to automatically classify (tag) fetched documents, or not. */
  @JsonProperty("autoClassify")
  private Boolean autoClassify = null;
  /* Send email when a fetch succeeds */
  @JsonProperty("emailSuccess")
  private Boolean emailSuccess = null;
  /* Send email when a fetch fails */
  @JsonProperty("emailFailure")
  private Boolean emailFailure = null;
  /* Flag to subscribe/unsubscribe from marketing emails */
  @JsonProperty("emailCampaign")
  private Boolean emailCampaign = null;
  /* Internal FileThis feature flags. Base64-encoded. [RO] */
  @JsonProperty("features")
  private String features = null;
  @JsonProperty("releaseDestinations")
  private List<String> releaseDestinations = new ArrayList<String>();
  /* Subscription plan. [RO] */
  @JsonProperty("plan")
  private String plan = null;
  /* Number of 'add-on' packages purchased. [RO] */
  @JsonProperty("addons")
  private Integer addons = null;
  /* Number of 'add-on' packages upon renewal. [RO] */
  @JsonProperty("pendingAddons")
  private Integer pendingAddons = null;
  /* Subscription plan on renewal. [RO] */
  @JsonProperty("pendingPlan")
  private String pendingPlan = null;
  /* Does the account's subscription plan renew?. [RO] */
  @JsonProperty("renews")
  private Boolean renews = null;
  @JsonProperty("featuresAsMap")
  private Object featuresAsMap = null;
  /* Additional source connections from add-ons. [RO] */
  @JsonProperty("addOnSourceConnectionQuota")
  private Integer addOnSourceConnectionQuota = null;
  /* Additional storage from add-ons in Kilobytes. [RO] */
  @JsonProperty("addOnStorageQuota")
  private Integer addOnStorageQuota = null;
  /* Pro-Services branding logo. [RO] */
  @JsonProperty("brandingLogoUrl")
  private String brandingLogoUrl = null;
  /* Pro-Services branding name. [RO] */
  @JsonProperty("brandingName")
  private String brandingName = null;
  /* Date created. [RO] */
  @JsonProperty("createdDate")
  private date-time createdDate = null;
  /* Date that the user's subscription plan expires. [RO] */
  @JsonProperty("expiresDate")
  private date-time expiresDate = null;
  /* Unique Id given to account by Content Delivery Partner. [RO] */
  @JsonProperty("partnerAccountId")
  private String partnerAccountId = null;
  /* Date payment made for subscription plan. [RO] */
  @JsonProperty("paymentDate")
  private date-time paymentDate = null;
  /* Source connection quota for pending plan. [RO] */
  @JsonProperty("pendingPlanSourceConnectionQuota")
  private Integer pendingPlanSourceConnectionQuota = null;
  /* Storage quota for pending plan in Kilobytes. [RO] */
  @JsonProperty("pendingPlanStorageQuota")
  private Integer pendingPlanStorageQuota = null;
  /* IP address of user's previous login. [RO] */
  @JsonProperty("priorClientIp")
  private Integer priorClientIp = null;
  /* Date of user's previous login. [RO] */
  @JsonProperty("priorLoginDate")
  private Integer priorLoginDate = null;
  /* Connection quota from referrals. [RO] */
  @JsonProperty("referralSourceConnectionQuota")
  private Integer referralSourceConnectionQuota = null;
  /* Storage quota from referrals in Kilobytes. [RO] */
  @JsonProperty("referralStorageQuota")
  private Integer referralStorageQuota = null;
  /* Connection quota from subscription. [RO] */
  @JsonProperty("subscriptionSourceConnectionQuota")
  private Integer subscriptionSourceConnectionQuota = null;
  /* Storage quota from subscription in Kilobytes. [RO] */
  @JsonProperty("subscriptionStorageQuota")
  private Integer subscriptionStorageQuota = null;
  /* Link for user to share FileThis. [RO] */
  @JsonProperty("socialMediaUrl")
  private String socialMediaUrl = null;
  /* Total storage quota for account in Kilobytes. [RO] */
  @JsonProperty("totalStorageQuota")
  private Integer totalStorageQuota = null;
  /* Total storage usage by account in Kilobytes. [RO] */
  @JsonProperty("totalStorageUsage")
  private Integer totalStorageUsage = null;
  /* Total source connection quota for account. [RO] */
  @JsonProperty("totalSourceConnectionQuota")
  private Integer totalSourceConnectionQuota = null;
  /* Total storage quota for account. [RO] */
  @JsonProperty("totalSourceConnectionUsage")
  private Integer totalSourceConnectionUsage = null;
  /* Upload email address [RO] */
  @JsonProperty("uploadEmail")
  private String uploadEmail = null;
  /* Upload user name */
  @JsonProperty("uploadUsername")
  private String uploadUsername = null;
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  public String getLevel() {
    return level;
  }
  public void setLevel(String level) {
    this.level = level;
  }

  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  public Integer getPartnerId() {
    return partnerId;
  }
  public void setPartnerId(Integer partnerId) {
    this.partnerId = partnerId;
  }

  public Integer getProServiceId() {
    return proServiceId;
  }
  public void setProServiceId(Integer proServiceId) {
    this.proServiceId = proServiceId;
  }

  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public Boolean getUseTimeout() {
    return useTimeout;
  }
  public void setUseTimeout(Boolean useTimeout) {
    this.useTimeout = useTimeout;
  }

  public Integer getTimeoutMinutes() {
    return timeoutMinutes;
  }
  public void setTimeoutMinutes(Integer timeoutMinutes) {
    this.timeoutMinutes = timeoutMinutes;
  }

  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public Boolean getAutoClassify() {
    return autoClassify;
  }
  public void setAutoClassify(Boolean autoClassify) {
    this.autoClassify = autoClassify;
  }

  public Boolean getEmailSuccess() {
    return emailSuccess;
  }
  public void setEmailSuccess(Boolean emailSuccess) {
    this.emailSuccess = emailSuccess;
  }

  public Boolean getEmailFailure() {
    return emailFailure;
  }
  public void setEmailFailure(Boolean emailFailure) {
    this.emailFailure = emailFailure;
  }

  public Boolean getEmailCampaign() {
    return emailCampaign;
  }
  public void setEmailCampaign(Boolean emailCampaign) {
    this.emailCampaign = emailCampaign;
  }

  public String getFeatures() {
    return features;
  }
  public void setFeatures(String features) {
    this.features = features;
  }

  public List<String> getReleaseDestinations() {
    return releaseDestinations;
  }
  public void setReleaseDestinations(List<String> releaseDestinations) {
    this.releaseDestinations = releaseDestinations;
  }

  public String getPlan() {
    return plan;
  }
  public void setPlan(String plan) {
    this.plan = plan;
  }

  public Integer getAddons() {
    return addons;
  }
  public void setAddons(Integer addons) {
    this.addons = addons;
  }

  public Integer getPendingAddons() {
    return pendingAddons;
  }
  public void setPendingAddons(Integer pendingAddons) {
    this.pendingAddons = pendingAddons;
  }

  public String getPendingPlan() {
    return pendingPlan;
  }
  public void setPendingPlan(String pendingPlan) {
    this.pendingPlan = pendingPlan;
  }

  public Boolean getRenews() {
    return renews;
  }
  public void setRenews(Boolean renews) {
    this.renews = renews;
  }

  public Object getFeaturesAsMap() {
    return featuresAsMap;
  }
  public void setFeaturesAsMap(Object featuresAsMap) {
    this.featuresAsMap = featuresAsMap;
  }

  public Integer getAddOnSourceConnectionQuota() {
    return addOnSourceConnectionQuota;
  }
  public void setAddOnSourceConnectionQuota(Integer addOnSourceConnectionQuota) {
    this.addOnSourceConnectionQuota = addOnSourceConnectionQuota;
  }

  public Integer getAddOnStorageQuota() {
    return addOnStorageQuota;
  }
  public void setAddOnStorageQuota(Integer addOnStorageQuota) {
    this.addOnStorageQuota = addOnStorageQuota;
  }

  public String getBrandingLogoUrl() {
    return brandingLogoUrl;
  }
  public void setBrandingLogoUrl(String brandingLogoUrl) {
    this.brandingLogoUrl = brandingLogoUrl;
  }

  public String getBrandingName() {
    return brandingName;
  }
  public void setBrandingName(String brandingName) {
    this.brandingName = brandingName;
  }

  public date-time getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(date-time createdDate) {
    this.createdDate = createdDate;
  }

  public date-time getExpiresDate() {
    return expiresDate;
  }
  public void setExpiresDate(date-time expiresDate) {
    this.expiresDate = expiresDate;
  }

  public String getPartnerAccountId() {
    return partnerAccountId;
  }
  public void setPartnerAccountId(String partnerAccountId) {
    this.partnerAccountId = partnerAccountId;
  }

  public date-time getPaymentDate() {
    return paymentDate;
  }
  public void setPaymentDate(date-time paymentDate) {
    this.paymentDate = paymentDate;
  }

  public Integer getPendingPlanSourceConnectionQuota() {
    return pendingPlanSourceConnectionQuota;
  }
  public void setPendingPlanSourceConnectionQuota(Integer pendingPlanSourceConnectionQuota) {
    this.pendingPlanSourceConnectionQuota = pendingPlanSourceConnectionQuota;
  }

  public Integer getPendingPlanStorageQuota() {
    return pendingPlanStorageQuota;
  }
  public void setPendingPlanStorageQuota(Integer pendingPlanStorageQuota) {
    this.pendingPlanStorageQuota = pendingPlanStorageQuota;
  }

  public Integer getPriorClientIp() {
    return priorClientIp;
  }
  public void setPriorClientIp(Integer priorClientIp) {
    this.priorClientIp = priorClientIp;
  }

  public Integer getPriorLoginDate() {
    return priorLoginDate;
  }
  public void setPriorLoginDate(Integer priorLoginDate) {
    this.priorLoginDate = priorLoginDate;
  }

  public Integer getReferralSourceConnectionQuota() {
    return referralSourceConnectionQuota;
  }
  public void setReferralSourceConnectionQuota(Integer referralSourceConnectionQuota) {
    this.referralSourceConnectionQuota = referralSourceConnectionQuota;
  }

  public Integer getReferralStorageQuota() {
    return referralStorageQuota;
  }
  public void setReferralStorageQuota(Integer referralStorageQuota) {
    this.referralStorageQuota = referralStorageQuota;
  }

  public Integer getSubscriptionSourceConnectionQuota() {
    return subscriptionSourceConnectionQuota;
  }
  public void setSubscriptionSourceConnectionQuota(Integer subscriptionSourceConnectionQuota) {
    this.subscriptionSourceConnectionQuota = subscriptionSourceConnectionQuota;
  }

  public Integer getSubscriptionStorageQuota() {
    return subscriptionStorageQuota;
  }
  public void setSubscriptionStorageQuota(Integer subscriptionStorageQuota) {
    this.subscriptionStorageQuota = subscriptionStorageQuota;
  }

  public String getSocialMediaUrl() {
    return socialMediaUrl;
  }
  public void setSocialMediaUrl(String socialMediaUrl) {
    this.socialMediaUrl = socialMediaUrl;
  }

  public Integer getTotalStorageQuota() {
    return totalStorageQuota;
  }
  public void setTotalStorageQuota(Integer totalStorageQuota) {
    this.totalStorageQuota = totalStorageQuota;
  }

  public Integer getTotalStorageUsage() {
    return totalStorageUsage;
  }
  public void setTotalStorageUsage(Integer totalStorageUsage) {
    this.totalStorageUsage = totalStorageUsage;
  }

  public Integer getTotalSourceConnectionQuota() {
    return totalSourceConnectionQuota;
  }
  public void setTotalSourceConnectionQuota(Integer totalSourceConnectionQuota) {
    this.totalSourceConnectionQuota = totalSourceConnectionQuota;
  }

  public Integer getTotalSourceConnectionUsage() {
    return totalSourceConnectionUsage;
  }
  public void setTotalSourceConnectionUsage(Integer totalSourceConnectionUsage) {
    this.totalSourceConnectionUsage = totalSourceConnectionUsage;
  }

  public String getUploadEmail() {
    return uploadEmail;
  }
  public void setUploadEmail(String uploadEmail) {
    this.uploadEmail = uploadEmail;
  }

  public String getUploadUsername() {
    return uploadUsername;
  }
  public void setUploadUsername(String uploadUsername) {
    this.uploadUsername = uploadUsername;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Account {\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  level: ").append(level).append("\n");
    sb.append("  password: ").append(password).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  partnerId: ").append(partnerId).append("\n");
    sb.append("  proServiceId: ").append(proServiceId).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  useTimeout: ").append(useTimeout).append("\n");
    sb.append("  timeoutMinutes: ").append(timeoutMinutes).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  autoClassify: ").append(autoClassify).append("\n");
    sb.append("  emailSuccess: ").append(emailSuccess).append("\n");
    sb.append("  emailFailure: ").append(emailFailure).append("\n");
    sb.append("  emailCampaign: ").append(emailCampaign).append("\n");
    sb.append("  features: ").append(features).append("\n");
    sb.append("  releaseDestinations: ").append(releaseDestinations).append("\n");
    sb.append("  plan: ").append(plan).append("\n");
    sb.append("  addons: ").append(addons).append("\n");
    sb.append("  pendingAddons: ").append(pendingAddons).append("\n");
    sb.append("  pendingPlan: ").append(pendingPlan).append("\n");
    sb.append("  renews: ").append(renews).append("\n");
    sb.append("  featuresAsMap: ").append(featuresAsMap).append("\n");
    sb.append("  addOnSourceConnectionQuota: ").append(addOnSourceConnectionQuota).append("\n");
    sb.append("  addOnStorageQuota: ").append(addOnStorageQuota).append("\n");
    sb.append("  brandingLogoUrl: ").append(brandingLogoUrl).append("\n");
    sb.append("  brandingName: ").append(brandingName).append("\n");
    sb.append("  createdDate: ").append(createdDate).append("\n");
    sb.append("  expiresDate: ").append(expiresDate).append("\n");
    sb.append("  partnerAccountId: ").append(partnerAccountId).append("\n");
    sb.append("  paymentDate: ").append(paymentDate).append("\n");
    sb.append("  pendingPlanSourceConnectionQuota: ").append(pendingPlanSourceConnectionQuota).append("\n");
    sb.append("  pendingPlanStorageQuota: ").append(pendingPlanStorageQuota).append("\n");
    sb.append("  priorClientIp: ").append(priorClientIp).append("\n");
    sb.append("  priorLoginDate: ").append(priorLoginDate).append("\n");
    sb.append("  referralSourceConnectionQuota: ").append(referralSourceConnectionQuota).append("\n");
    sb.append("  referralStorageQuota: ").append(referralStorageQuota).append("\n");
    sb.append("  subscriptionSourceConnectionQuota: ").append(subscriptionSourceConnectionQuota).append("\n");
    sb.append("  subscriptionStorageQuota: ").append(subscriptionStorageQuota).append("\n");
    sb.append("  socialMediaUrl: ").append(socialMediaUrl).append("\n");
    sb.append("  totalStorageQuota: ").append(totalStorageQuota).append("\n");
    sb.append("  totalStorageUsage: ").append(totalStorageUsage).append("\n");
    sb.append("  totalSourceConnectionQuota: ").append(totalSourceConnectionQuota).append("\n");
    sb.append("  totalSourceConnectionUsage: ").append(totalSourceConnectionUsage).append("\n");
    sb.append("  uploadEmail: ").append(uploadEmail).append("\n");
    sb.append("  uploadUsername: ").append(uploadUsername).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

