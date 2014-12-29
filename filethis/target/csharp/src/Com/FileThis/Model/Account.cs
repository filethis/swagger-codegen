using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.FileThis.Model {
  public class Account {
    /* Unique Id. Returned as a string. [RO] */
    public int? id { get; set; }

    /* FileThis account type. [RO] */
    public string type { get; set; }

    /* FileThis account level. [RO] */
    public string level { get; set; }

    /* FileThis account password. [WO] */
    public string password { get; set; }

    /* User email (Also used for FileThis login). */
    public string email { get; set; }

    /* Unique Id of account's Content Delivery Partner. Returned as a string. [RO] */
    public int? partnerId { get; set; }

    /* Unique Id of Pro-Service. [RO] */
    public int? proServiceId { get; set; }

    /* User's first name */
    public string firstName { get; set; }

    /* Flag to enable/disable session timeout */
    public bool? useTimeout { get; set; }

    /* Session timeout duration */
    public int? timeoutMinutes { get; set; }

    /* User's last name */
    public string lastName { get; set; }

    /* Whether to automatically classify (tag) fetched documents, or not. */
    public bool? autoClassify { get; set; }

    /* Send email when a fetch succeeds */
    public bool? emailSuccess { get; set; }

    /* Send email when a fetch fails */
    public bool? emailFailure { get; set; }

    /* Flag to subscribe/unsubscribe from marketing emails */
    public bool? emailCampaign { get; set; }

    /* Internal FileThis feature flags. Base64-encoded. [RO] */
    public string features { get; set; }

    public List<string> releaseDestinations { get; set; }

    /* Subscription plan. [RO] */
    public string plan { get; set; }

    /* Number of 'add-on' packages purchased. [RO] */
    public int? addons { get; set; }

    /* Number of 'add-on' packages upon renewal. [RO] */
    public int? pendingAddons { get; set; }

    /* Subscription plan on renewal. [RO] */
    public string pendingPlan { get; set; }

    /* Does the account's subscription plan renew?. [RO] */
    public bool? renews { get; set; }

    public object featuresAsMap { get; set; }

    /* Additional source connections from add-ons. [RO] */
    public int? addOnSourceConnectionQuota { get; set; }

    /* Additional storage from add-ons in Kilobytes. [RO] */
    public int? addOnStorageQuota { get; set; }

    /* Pro-Services branding logo. [RO] */
    public string brandingLogoUrl { get; set; }

    /* Pro-Services branding name. [RO] */
    public string brandingName { get; set; }

    /* Date created. [RO] */
    public date-time createdDate { get; set; }

    /* Date that the user's subscription plan expires. [RO] */
    public date-time expiresDate { get; set; }

    /* Unique Id given to account by Content Delivery Partner. [RO] */
    public string partnerAccountId { get; set; }

    /* Date payment made for subscription plan. [RO] */
    public date-time paymentDate { get; set; }

    /* Source connection quota for pending plan. [RO] */
    public int? pendingPlanSourceConnectionQuota { get; set; }

    /* Storage quota for pending plan in Kilobytes. [RO] */
    public int? pendingPlanStorageQuota { get; set; }

    /* IP address of user's previous login. [RO] */
    public int? priorClientIp { get; set; }

    /* Date of user's previous login. [RO] */
    public int? priorLoginDate { get; set; }

    /* Connection quota from referrals. [RO] */
    public int? referralSourceConnectionQuota { get; set; }

    /* Storage quota from referrals in Kilobytes. [RO] */
    public int? referralStorageQuota { get; set; }

    /* Connection quota from subscription. [RO] */
    public int? subscriptionSourceConnectionQuota { get; set; }

    /* Storage quota from subscription in Kilobytes. [RO] */
    public int? subscriptionStorageQuota { get; set; }

    /* Link for user to share FileThis. [RO] */
    public string socialMediaUrl { get; set; }

    /* Total storage quota for account in Kilobytes. [RO] */
    public int? totalStorageQuota { get; set; }

    /* Total storage usage by account in Kilobytes. [RO] */
    public int? totalStorageUsage { get; set; }

    /* Total source connection quota for account. [RO] */
    public int? totalSourceConnectionQuota { get; set; }

    /* Total storage quota for account. [RO] */
    public int? totalSourceConnectionUsage { get; set; }

    /* Upload email address [RO] */
    public string uploadEmail { get; set; }

    /* Upload user name */
    public string uploadUsername { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Account {\n");
      sb.Append("  id: ").Append(id).Append("\n");
      sb.Append("  type: ").Append(type).Append("\n");
      sb.Append("  level: ").Append(level).Append("\n");
      sb.Append("  password: ").Append(password).Append("\n");
      sb.Append("  email: ").Append(email).Append("\n");
      sb.Append("  partnerId: ").Append(partnerId).Append("\n");
      sb.Append("  proServiceId: ").Append(proServiceId).Append("\n");
      sb.Append("  firstName: ").Append(firstName).Append("\n");
      sb.Append("  useTimeout: ").Append(useTimeout).Append("\n");
      sb.Append("  timeoutMinutes: ").Append(timeoutMinutes).Append("\n");
      sb.Append("  lastName: ").Append(lastName).Append("\n");
      sb.Append("  autoClassify: ").Append(autoClassify).Append("\n");
      sb.Append("  emailSuccess: ").Append(emailSuccess).Append("\n");
      sb.Append("  emailFailure: ").Append(emailFailure).Append("\n");
      sb.Append("  emailCampaign: ").Append(emailCampaign).Append("\n");
      sb.Append("  features: ").Append(features).Append("\n");
      sb.Append("  releaseDestinations: ").Append(releaseDestinations).Append("\n");
      sb.Append("  plan: ").Append(plan).Append("\n");
      sb.Append("  addons: ").Append(addons).Append("\n");
      sb.Append("  pendingAddons: ").Append(pendingAddons).Append("\n");
      sb.Append("  pendingPlan: ").Append(pendingPlan).Append("\n");
      sb.Append("  renews: ").Append(renews).Append("\n");
      sb.Append("  featuresAsMap: ").Append(featuresAsMap).Append("\n");
      sb.Append("  addOnSourceConnectionQuota: ").Append(addOnSourceConnectionQuota).Append("\n");
      sb.Append("  addOnStorageQuota: ").Append(addOnStorageQuota).Append("\n");
      sb.Append("  brandingLogoUrl: ").Append(brandingLogoUrl).Append("\n");
      sb.Append("  brandingName: ").Append(brandingName).Append("\n");
      sb.Append("  createdDate: ").Append(createdDate).Append("\n");
      sb.Append("  expiresDate: ").Append(expiresDate).Append("\n");
      sb.Append("  partnerAccountId: ").Append(partnerAccountId).Append("\n");
      sb.Append("  paymentDate: ").Append(paymentDate).Append("\n");
      sb.Append("  pendingPlanSourceConnectionQuota: ").Append(pendingPlanSourceConnectionQuota).Append("\n");
      sb.Append("  pendingPlanStorageQuota: ").Append(pendingPlanStorageQuota).Append("\n");
      sb.Append("  priorClientIp: ").Append(priorClientIp).Append("\n");
      sb.Append("  priorLoginDate: ").Append(priorLoginDate).Append("\n");
      sb.Append("  referralSourceConnectionQuota: ").Append(referralSourceConnectionQuota).Append("\n");
      sb.Append("  referralStorageQuota: ").Append(referralStorageQuota).Append("\n");
      sb.Append("  subscriptionSourceConnectionQuota: ").Append(subscriptionSourceConnectionQuota).Append("\n");
      sb.Append("  subscriptionStorageQuota: ").Append(subscriptionStorageQuota).Append("\n");
      sb.Append("  socialMediaUrl: ").Append(socialMediaUrl).Append("\n");
      sb.Append("  totalStorageQuota: ").Append(totalStorageQuota).Append("\n");
      sb.Append("  totalStorageUsage: ").Append(totalStorageUsage).Append("\n");
      sb.Append("  totalSourceConnectionQuota: ").Append(totalSourceConnectionQuota).Append("\n");
      sb.Append("  totalSourceConnectionUsage: ").Append(totalSourceConnectionUsage).Append("\n");
      sb.Append("  uploadEmail: ").Append(uploadEmail).Append("\n");
      sb.Append("  uploadUsername: ").Append(uploadUsername).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
