  using System;
  using System.Collections.Generic;
  using Com.FileThis;
  using Com.FileThis.Model;
  namespace Com.FileThis.Api {
    public class V1Api {
      string basePath;
      private readonly ApiInvoker apiInvoker = ApiInvoker.GetInstance();

      public V1Api(String basePath = "/api")
      {
        this.basePath = basePath;
      }

      public ApiInvoker getInvoker() {
        return apiInvoker;
      }

      // Sets the endpoint base url for the services being accessed
      public void setBasePath(string basePath) {
        this.basePath = basePath;
      }

      // Gets the endpoint base url for the services being accessed
      public String getBasePath() {
        return basePath;
      }

      /// <summary>
      /// Update account The 'password' query parameter is only required when changing the account password
      /// </summary>
      /// <param name="ticket">Session ticket</param>
      /// <param name="password">Current password</param>
      /// <param name="body">Account object</param>
      /// <returns></returns>
      public void putAccount (string ticket, string password, Account body) {
        // create path and map variables
        var path = "/v1/accounts/me".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        if (password != null){
          string paramStr = (password is DateTime) ? ((DateTime)(object)password).ToString("u") : Convert.ToString(password);
          queryParams.Add("password", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get account Notes here
      /// </summary>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Account getAccount (string ticket) {
        // create path and map variables
        var path = "/v1/accounts/me".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Account) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Account;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Account) ApiInvoker.deserialize(response, typeof(Account));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Create a source connection By default, a fetch will be initiated as soon as a new connection is created.
      /// </summary>
      /// <param name="fetch">fetch</param>
      /// <param name="ticket">Session ticket</param>
      /// <param name="body">Connection object</param>
      /// <returns></returns>
      public Connection createConnectionDirect (string fetch, string ticket, Connection body) {
        // create path and map variables
        var path = "/v1/connections".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (fetch != null){
          string paramStr = (fetch is DateTime) ? ((DateTime)(object)fetch).ToString("u") : Convert.ToString(fetch);
          queryParams.Add("fetch", paramStr);
		}
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Connection) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Connection;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (Connection) ApiInvoker.deserialize(response, typeof(Connection));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get all source connections Notes here
      /// </summary>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Connection getConnectionsDirect (string ticket) {
        // create path and map variables
        var path = "/v1/connections".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Connection) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Connection;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Connection) ApiInvoker.deserialize(response, typeof(Connection));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Delete source connection Notes here
      /// </summary>
      /// <param name="connectionId">Source Connection Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public void deleteConnectionDirect (string connectionId, string ticket) {
        // create path and map variables
        var path = "/v1/connections/{connectionId}".Replace("{format}","json").Replace("{" + "connectionId" + "}", apiInvoker.escapeString(connectionId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (connectionId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get source connection Notes here
      /// </summary>
      /// <param name="connectionId">Source Connection Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Connection getConnectionDirect (string connectionId, string ticket) {
        // create path and map variables
        var path = "/v1/connections/{connectionId}".Replace("{format}","json").Replace("{" + "connectionId" + "}", apiInvoker.escapeString(connectionId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (connectionId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Connection) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Connection;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Connection) ApiInvoker.deserialize(response, typeof(Connection));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update credentials in source connection Notes here
      /// </summary>
      /// <param name="connectionId">Source Connection Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <param name="body">Credentials</param>
      /// <returns></returns>
      public void putConnectionCredentialsDirect (string connectionId, string ticket, Credentials body) {
        // create path and map variables
        var path = "/v1/connections/{connectionId}/credentials".Replace("{format}","json").Replace("{" + "connectionId" + "}", apiInvoker.escapeString(connectionId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (connectionId == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Initiate a fetch for source connection Notes here
      /// </summary>
      /// <param name="connectionId">Source Connection Id</param>
      /// <param name="all">All</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public void fetchDirect (string connectionId, string all, string ticket) {
        // create path and map variables
        var path = "/v1/connections/{connectionId}/fetch".Replace("{format}","json").Replace("{" + "connectionId" + "}", apiInvoker.escapeString(connectionId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (connectionId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (all != null){
          string paramStr = (all is DateTime) ? ((DateTime)(object)all).ToString("u") : Convert.ToString(all);
          queryParams.Add("all", paramStr);
		}
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get all destinations Notes here
      /// </summary>
      /// <param name="filtering">Pro-Service filter</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Destination getDestinations (string filtering, string ticket) {
        // create path and map variables
        var path = "/v1/destinations".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (filtering != null){
          string paramStr = (filtering is DateTime) ? ((DateTime)(object)filtering).ToString("u") : Convert.ToString(filtering);
          queryParams.Add("filtering", paramStr);
		}
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Destination) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Destination;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Destination) ApiInvoker.deserialize(response, typeof(Destination));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get all documents Notes here
      /// </summary>
      /// <param name="sortProperty">Sort property</param>
      /// <param name="sortDirection">Sort direction</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Document getDocumentsDirect (string sortProperty, string sortDirection, string ticket) {
        // create path and map variables
        var path = "/v1/documents".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (sortProperty != null){
          string paramStr = (sortProperty is DateTime) ? ((DateTime)(object)sortProperty).ToString("u") : Convert.ToString(sortProperty);
          queryParams.Add("sortProperty", paramStr);
		}
        if (sortDirection != null){
          string paramStr = (sortDirection is DateTime) ? ((DateTime)(object)sortDirection).ToString("u") : Convert.ToString(sortDirection);
          queryParams.Add("sortDirection", paramStr);
		}
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Document) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Document;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Document) ApiInvoker.deserialize(response, typeof(Document));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get document Notes here
      /// </summary>
      /// <param name="documentId">Document Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Document getDocumentDirect (string documentId, string ticket) {
        // create path and map variables
        var path = "/v1/documents/{documentId}".Replace("{format}","json").Replace("{" + "documentId" + "}", apiInvoker.escapeString(documentId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (documentId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Document) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Document;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Document) ApiInvoker.deserialize(response, typeof(Document));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Delete document Notes here
      /// </summary>
      /// <param name="documentId">Document Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public void deleteDocumentDirect (string documentId, string ticket) {
        // create path and map variables
        var path = "/v1/documents/{documentId}".Replace("{format}","json").Replace("{" + "documentId" + "}", apiInvoker.escapeString(documentId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (documentId == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Update account Notes here
      /// </summary>
      /// <param name="documentId">Document Id</param>
      /// <param name="ticket">Session ticket</param>
      /// <param name="body">Document object</param>
      /// <returns></returns>
      public void putDocument (string documentId, string ticket, Document body) {
        // create path and map variables
        var path = "/v1/documents/{documentId}".Replace("{format}","json").Replace("{" + "documentId" + "}", apiInvoker.escapeString(documentId.ToString()));

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (documentId == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(void) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return ;
            }
            else {
              return ;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return ;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Get all sources Note that the name 'Institution' shown below will soon be changed to 'Source'
      /// </summary>
      /// <param name="ticket">Session ticket</param>
      /// <returns></returns>
      public Institution getSources (string ticket) {
        // create path and map variables
        var path = "/v1/sources".Replace("{format}","json");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (ticket != null){
          string paramStr = (ticket is DateTime) ? ((DateTime)(object)ticket).ToString("u") : Convert.ToString(ticket);
          queryParams.Add("ticket", paramStr);
		}
        try {
          if (typeof(Institution) == typeof(byte[])) {
            var response = apiInvoker.invokeBinaryAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            return ((object)response) as Institution;
          } else {
            var response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (Institution) ApiInvoker.deserialize(response, typeof(Institution));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      }
    }
