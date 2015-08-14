class Document
  attr_accessor :name, :id, :size, :shared, :mime_type, :destination_id, :account_id, :page_count, :kind, :delivery_state, :relevant_date, :action_date, :created_date, :added_date, :delivered_date, :original_name, :original_relevant_date

  # :internal => :external
  def self.attribute_map
    {
      :name => :name,
      :id => :id,
      :size => :size,
      :shared => :shared,
      :mime_type => :mimeType,
      :destination_id => :destinationId,
      :account_id => :accountId,
      :page_count => :pageCount,
      :kind => :kind,
      :delivery_state => :deliveryState,
      :relevant_date => :relevantDate,
      :action_date => :actionDate,
      :created_date => :createdDate,
      :added_date => :addedDate,
      :delivered_date => :deliveredDate,
      :original_name => :originalName,
      :original_relevant_date => :originalRelevantDate

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
    if self.class.attribute_map[:"size"]
      @size = attributes["size"]
    end
    if self.class.attribute_map[:"shared"]
      @shared = attributes["shared"]
    end
    if self.class.attribute_map[:"mime_type"]
      @mime_type = attributes["mimeType"]
    end
    if self.class.attribute_map[:"destination_id"]
      @destination_id = attributes["destinationId"]
    end
    if self.class.attribute_map[:"account_id"]
      @account_id = attributes["accountId"]
    end
    if self.class.attribute_map[:"page_count"]
      @page_count = attributes["pageCount"]
    end
    if self.class.attribute_map[:"kind"]
      @kind = attributes["kind"]
    end
    if self.class.attribute_map[:"delivery_state"]
      @delivery_state = attributes["deliveryState"]
    end
    if self.class.attribute_map[:"relevant_date"]
      @relevant_date = attributes["relevantDate"]
    end
    if self.class.attribute_map[:"action_date"]
      @action_date = attributes["actionDate"]
    end
    if self.class.attribute_map[:"created_date"]
      @created_date = attributes["createdDate"]
    end
    if self.class.attribute_map[:"added_date"]
      @added_date = attributes["addedDate"]
    end
    if self.class.attribute_map[:"delivered_date"]
      @delivered_date = attributes["deliveredDate"]
    end
    if self.class.attribute_map[:"original_name"]
      @original_name = attributes["originalName"]
    end
    if self.class.attribute_map[:"original_relevant_date"]
      @original_relevant_date = attributes["originalRelevantDate"]
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

