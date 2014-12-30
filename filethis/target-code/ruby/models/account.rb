class Account
  attr_accessor :id, :type, :level, :password, :email, :partner_id, :pro_service_id, :first_name, :use_timeout, :timeout_minutes, :last_name, :auto_classify, :email_success, :email_failure, :email_campaign, :features, :release_destinations, :plan, :addons, :pending_addons, :pending_plan, :renews, :features_as_map, :add_on_source_connection_quota, :add_on_storage_quota, :branding_logo_url, :branding_name, :created_date, :expires_date, :partner_account_id, :payment_date, :pending_plan_source_connection_quota, :pending_plan_storage_quota, :prior_client_ip, :prior_login_date, :referral_source_connection_quota, :referral_storage_quota, :subscription_source_connection_quota, :subscription_storage_quota, :social_media_url, :total_storage_quota, :total_storage_usage, :total_source_connection_quota, :total_source_connection_usage, :upload_email, :upload_username

  # :internal => :external
  def self.attribute_map
    {
      :id => :id,
      :type => :type,
      :level => :level,
      :password => :password,
      :email => :email,
      :partner_id => :partnerId,
      :pro_service_id => :proServiceId,
      :first_name => :firstName,
      :use_timeout => :useTimeout,
      :timeout_minutes => :timeoutMinutes,
      :last_name => :lastName,
      :auto_classify => :autoClassify,
      :email_success => :emailSuccess,
      :email_failure => :emailFailure,
      :email_campaign => :emailCampaign,
      :features => :features,
      :release_destinations => :releaseDestinations,
      :plan => :plan,
      :addons => :addons,
      :pending_addons => :pendingAddons,
      :pending_plan => :pendingPlan,
      :renews => :renews,
      :features_as_map => :featuresAsMap,
      :add_on_source_connection_quota => :addOnSourceConnectionQuota,
      :add_on_storage_quota => :addOnStorageQuota,
      :branding_logo_url => :brandingLogoUrl,
      :branding_name => :brandingName,
      :created_date => :createdDate,
      :expires_date => :expiresDate,
      :partner_account_id => :partnerAccountId,
      :payment_date => :paymentDate,
      :pending_plan_source_connection_quota => :pendingPlanSourceConnectionQuota,
      :pending_plan_storage_quota => :pendingPlanStorageQuota,
      :prior_client_ip => :priorClientIp,
      :prior_login_date => :priorLoginDate,
      :referral_source_connection_quota => :referralSourceConnectionQuota,
      :referral_storage_quota => :referralStorageQuota,
      :subscription_source_connection_quota => :subscriptionSourceConnectionQuota,
      :subscription_storage_quota => :subscriptionStorageQuota,
      :social_media_url => :socialMediaUrl,
      :total_storage_quota => :totalStorageQuota,
      :total_storage_usage => :totalStorageUsage,
      :total_source_connection_quota => :totalSourceConnectionQuota,
      :total_source_connection_usage => :totalSourceConnectionUsage,
      :upload_email => :uploadEmail,
      :upload_username => :uploadUsername

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
    end
    if self.class.attribute_map[:"level"]
      @level = attributes["level"]
    end
    if self.class.attribute_map[:"password"]
      @password = attributes["password"]
    end
    if self.class.attribute_map[:"email"]
      @email = attributes["email"]
    end
    if self.class.attribute_map[:"partner_id"]
      @partner_id = attributes["partnerId"]
    end
    if self.class.attribute_map[:"pro_service_id"]
      @pro_service_id = attributes["proServiceId"]
    end
    if self.class.attribute_map[:"first_name"]
      @first_name = attributes["firstName"]
    end
    if self.class.attribute_map[:"use_timeout"]
      @use_timeout = attributes["useTimeout"]
    end
    if self.class.attribute_map[:"timeout_minutes"]
      @timeout_minutes = attributes["timeoutMinutes"]
    end
    if self.class.attribute_map[:"last_name"]
      @last_name = attributes["lastName"]
    end
    if self.class.attribute_map[:"auto_classify"]
      @auto_classify = attributes["autoClassify"]
    end
    if self.class.attribute_map[:"email_success"]
      @email_success = attributes["emailSuccess"]
    end
    if self.class.attribute_map[:"email_failure"]
      @email_failure = attributes["emailFailure"]
    end
    if self.class.attribute_map[:"email_campaign"]
      @email_campaign = attributes["emailCampaign"]
    end
    if self.class.attribute_map[:"features"]
      @features = attributes["features"]
    end
    if self.class.attribute_map[:"release_destinations"]
      if (value = attributes["releaseDestinations"]).is_a?(Array)
          @release_destinations = value

        end
      end
    if self.class.attribute_map[:"plan"]
      @plan = attributes["plan"]
    end
    if self.class.attribute_map[:"addons"]
      @addons = attributes["addons"]
    end
    if self.class.attribute_map[:"pending_addons"]
      @pending_addons = attributes["pendingAddons"]
    end
    if self.class.attribute_map[:"pending_plan"]
      @pending_plan = attributes["pendingPlan"]
    end
    if self.class.attribute_map[:"renews"]
      @renews = attributes["renews"]
    end
    if self.class.attribute_map[:"features_as_map"]
      @features_as_map = attributes["featuresAsMap"]
    end
    if self.class.attribute_map[:"add_on_source_connection_quota"]
      @add_on_source_connection_quota = attributes["addOnSourceConnectionQuota"]
    end
    if self.class.attribute_map[:"add_on_storage_quota"]
      @add_on_storage_quota = attributes["addOnStorageQuota"]
    end
    if self.class.attribute_map[:"branding_logo_url"]
      @branding_logo_url = attributes["brandingLogoUrl"]
    end
    if self.class.attribute_map[:"branding_name"]
      @branding_name = attributes["brandingName"]
    end
    if self.class.attribute_map[:"created_date"]
      @created_date = attributes["createdDate"]
    end
    if self.class.attribute_map[:"expires_date"]
      @expires_date = attributes["expiresDate"]
    end
    if self.class.attribute_map[:"partner_account_id"]
      @partner_account_id = attributes["partnerAccountId"]
    end
    if self.class.attribute_map[:"payment_date"]
      @payment_date = attributes["paymentDate"]
    end
    if self.class.attribute_map[:"pending_plan_source_connection_quota"]
      @pending_plan_source_connection_quota = attributes["pendingPlanSourceConnectionQuota"]
    end
    if self.class.attribute_map[:"pending_plan_storage_quota"]
      @pending_plan_storage_quota = attributes["pendingPlanStorageQuota"]
    end
    if self.class.attribute_map[:"prior_client_ip"]
      @prior_client_ip = attributes["priorClientIp"]
    end
    if self.class.attribute_map[:"prior_login_date"]
      @prior_login_date = attributes["priorLoginDate"]
    end
    if self.class.attribute_map[:"referral_source_connection_quota"]
      @referral_source_connection_quota = attributes["referralSourceConnectionQuota"]
    end
    if self.class.attribute_map[:"referral_storage_quota"]
      @referral_storage_quota = attributes["referralStorageQuota"]
    end
    if self.class.attribute_map[:"subscription_source_connection_quota"]
      @subscription_source_connection_quota = attributes["subscriptionSourceConnectionQuota"]
    end
    if self.class.attribute_map[:"subscription_storage_quota"]
      @subscription_storage_quota = attributes["subscriptionStorageQuota"]
    end
    if self.class.attribute_map[:"social_media_url"]
      @social_media_url = attributes["socialMediaUrl"]
    end
    if self.class.attribute_map[:"total_storage_quota"]
      @total_storage_quota = attributes["totalStorageQuota"]
    end
    if self.class.attribute_map[:"total_storage_usage"]
      @total_storage_usage = attributes["totalStorageUsage"]
    end
    if self.class.attribute_map[:"total_source_connection_quota"]
      @total_source_connection_quota = attributes["totalSourceConnectionQuota"]
    end
    if self.class.attribute_map[:"total_source_connection_usage"]
      @total_source_connection_usage = attributes["totalSourceConnectionUsage"]
    end
    if self.class.attribute_map[:"upload_email"]
      @upload_email = attributes["uploadEmail"]
    end
    if self.class.attribute_map[:"upload_username"]
      @upload_username = attributes["uploadUsername"]
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

