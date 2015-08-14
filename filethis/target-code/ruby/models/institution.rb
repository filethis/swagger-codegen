class Institution
  attr_accessor :name, :id, :state, :type, :info, :popularity, :home_page_url, :phone, :logo, :fid, :logo_url, :added_date

  # :internal => :external
  def self.attribute_map
    {
      :name => :name,
      :id => :id,
      :state => :state,
      :type => :type,
      :info => :info,
      :popularity => :popularity,
      :home_page_url => :homePageUrl,
      :phone => :phone,
      :logo => :logo,
      :fid => :fid,
      :logo_url => :logoUrl,
      :added_date => :addedDate

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
    if self.class.attribute_map[:"info"]
      @info = attributes["info"]
    end
    if self.class.attribute_map[:"popularity"]
      @popularity = attributes["popularity"]
    end
    if self.class.attribute_map[:"home_page_url"]
      @home_page_url = attributes["homePageUrl"]
    end
    if self.class.attribute_map[:"phone"]
      @phone = attributes["phone"]
    end
    if self.class.attribute_map[:"logo"]
      @logo = attributes["logo"]
    end
    if self.class.attribute_map[:"fid"]
      @fid = attributes["fid"]
    end
    if self.class.attribute_map[:"logo_url"]
      @logo_url = attributes["logoUrl"]
    end
    if self.class.attribute_map[:"added_date"]
      @added_date = attributes["addedDate"]
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

