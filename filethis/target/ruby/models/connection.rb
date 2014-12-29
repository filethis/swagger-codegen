class Connection
  attr_accessor :name, :id, :state, :enabled, :info, :password, :username, :account_id, :validation, :period, :document_count, :fetch_all, :attempt_date, :checked_date, :source_id, :success_date

  # :internal => :external
  def self.attribute_map
    {
      :name => :name,
      :id => :id,
      :state => :state,
      :enabled => :enabled,
      :info => :info,
      :password => :password,
      :username => :username,
      :account_id => :accountId,
      :validation => :validation,
      :period => :period,
      :document_count => :documentCount,
      :fetch_all => :fetchAll,
      :attempt_date => :attemptDate,
      :checked_date => :checkedDate,
      :source_id => :sourceId,
      :success_date => :successDate

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
    if self.class.attribute_map[:"enabled"]
      @enabled = attributes["enabled"]
    end
    if self.class.attribute_map[:"info"]
      @info = attributes["info"]
    end
    if self.class.attribute_map[:"password"]
      @password = attributes["password"]
    end
    if self.class.attribute_map[:"username"]
      @username = attributes["username"]
    end
    if self.class.attribute_map[:"account_id"]
      @account_id = attributes["accountId"]
    end
    if self.class.attribute_map[:"validation"]
      @validation = attributes["validation"]
    end
    if self.class.attribute_map[:"period"]
      @period = attributes["period"]
    end
    if self.class.attribute_map[:"document_count"]
      @document_count = attributes["documentCount"]
    end
    if self.class.attribute_map[:"fetch_all"]
      @fetch_all = attributes["fetchAll"]
    end
    if self.class.attribute_map[:"attempt_date"]
      @attempt_date = attributes["attemptDate"]
    end
    if self.class.attribute_map[:"checked_date"]
      @checked_date = attributes["checkedDate"]
    end
    if self.class.attribute_map[:"source_id"]
      @source_id = attributes["sourceId"]
    end
    if self.class.attribute_map[:"success_date"]
      @success_date = attributes["successDate"]
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

