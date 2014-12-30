class Destination
  attr_accessor :name, :id, :state, :type, :provider, :logo, :url, :help_url, :ios_app_id, :android_app_id, :app_url, :ordinal, :logo_url

  # :internal => :external
  def self.attribute_map
    {
      :name => :name,
      :id => :id,
      :state => :state,
      :type => :type,
      :provider => :provider,
      :logo => :logo,
      :url => :url,
      :help_url => :helpUrl,
      :ios_app_id => :iosAppId,
      :android_app_id => :androidAppId,
      :app_url => :appUrl,
      :ordinal => :ordinal,
      :logo_url => :logoUrl

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    if self.class.attribute_map[:"state"]
      @state = attributes["state"]
    end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
    end
    if self.class.attribute_map[:"provider"]
      @provider = attributes["provider"]
    end
    if self.class.attribute_map[:"logo"]
      @logo = attributes["logo"]
    end
    if self.class.attribute_map[:"url"]
      @url = attributes["url"]
    end
    if self.class.attribute_map[:"help_url"]
      @help_url = attributes["helpUrl"]
    end
    if self.class.attribute_map[:"ios_app_id"]
      @ios_app_id = attributes["iosAppId"]
    end
    if self.class.attribute_map[:"android_app_id"]
      @android_app_id = attributes["androidAppId"]
    end
    if self.class.attribute_map[:"app_url"]
      @app_url = attributes["appUrl"]
    end
    if self.class.attribute_map[:"ordinal"]
      @ordinal = attributes["ordinal"]
    end
    if self.class.attribute_map[:"logo_url"]
      @logo_url = attributes["logoUrl"]
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

