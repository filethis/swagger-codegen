require "uri"

class V1_api
  basePath = "/api"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.put_account (ticket,password,body,opts={})
    query_param_keys = [:ticket,:password]

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :ticket => ticket,
      :password => password,
      :body => body}.merge(opts)

    #resource path
    path = "/v1/accounts/me".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.get_account (ticket,opts={})
    query_param_keys = [:ticket]

    # set default values and merge with input
    options = {
    :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/accounts/me".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Account.new(response)

  end

def self.create_connection_direct (fetch,ticket,body,opts={})
    query_param_keys = [:fetch,:ticket]

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :fetch => fetch,
      :ticket => ticket,
      :body => body}.merge(opts)

    #resource path
    path = "/v1/connections".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Connection.new(response)

  end

def self.get_connections_direct (ticket,opts={})
    query_param_keys = [:ticket]

    # set default values and merge with input
    options = {
    :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/connections".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Connection.new(response)

  end

def self.delete_connection_direct (connection_id,ticket,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "connection_id is required" if connection_id.nil?
    # set default values and merge with input
    options = {
    :connection_id => connection_id,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/connections/{connectionId}".sub('{format}','json').sub('{' + 'connectionId' + '}', escapeString(connection_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.get_connection_direct (connection_id,ticket,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "connection_id is required" if connection_id.nil?
    # set default values and merge with input
    options = {
    :connection_id => connection_id,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/connections/{connectionId}".sub('{format}','json').sub('{' + 'connectionId' + '}', escapeString(connection_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Connection.new(response)

  end

def self.put_connection_credentials_direct (connection_id,ticket,body,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "connection_id is required" if connection_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :connection_id => connection_id,
      :ticket => ticket,
      :body => body}.merge(opts)

    #resource path
    path = "/v1/connections/{connectionId}/credentials".sub('{format}','json').sub('{' + 'connectionId' + '}', escapeString(connection_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.fetch_direct (connection_id,all,ticket,opts={})
    query_param_keys = [:all,:ticket]

    # verify existence of params
    raise "connection_id is required" if connection_id.nil?
    # set default values and merge with input
    options = {
    :connection_id => connection_id,
      :all => all,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/connections/{connectionId}/fetch".sub('{format}','json').sub('{' + 'connectionId' + '}', escapeString(connection_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.get_destinations (filtering,ticket,opts={})
    query_param_keys = [:filtering,:ticket]

    # set default values and merge with input
    options = {
    :filtering => filtering,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/destinations".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Destination.new(response)

  end

def self.get_documents_direct (sort_property,sort_direction,ticket,opts={})
    query_param_keys = [:sort_property,:sort_direction,:ticket]

    # set default values and merge with input
    options = {
    :sort_property => sort_property,
      :sort_direction => sort_direction,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/documents".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Document.new(response)

  end

def self.get_document_direct (document_id,ticket,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "document_id is required" if document_id.nil?
    # set default values and merge with input
    options = {
    :document_id => document_id,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', escapeString(document_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Document.new(response)

  end

def self.delete_document_direct (document_id,ticket,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "document_id is required" if document_id.nil?
    # set default values and merge with input
    options = {
    :document_id => document_id,
      :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', escapeString(document_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.put_document (document_id,ticket,body,opts={})
    query_param_keys = [:ticket]

    # verify existence of params
    raise "document_id is required" if document_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :document_id => document_id,
      :ticket => ticket,
      :body => body}.merge(opts)

    #resource path
    path = "/v1/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', escapeString(document_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    

  end

def self.get_sources (ticket,opts={})
    query_param_keys = [:ticket]

    # set default values and merge with input
    options = {
    :ticket => ticket}.merge(opts)

    #resource path
    path = "/v1/sources".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Institution.new(response)

  end

end

