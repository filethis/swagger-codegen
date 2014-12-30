package com.filethis.client.api

import com.filethis.client.model.Account
import com.filethis.client.model.Credentials
import com.filethis.client.model.Connection
import com.filethis.client.model.Destination
import com.filethis.client.model.Institution
import com.filethis.client.model.Document
import com.filethis.client.ApiInvoker
import com.filethis.client.ApiException

import java.io.File
import java.util.Date

import scala.collection.mutable.HashMap

class V1Api {
  var basePath: String = "/api"
  var apiInvoker = ApiInvoker
  
  def addHeader(key: String, value: String) = apiInvoker.defaultHeaders += key -> value 

  def putAccount (ticket: String, password: String, body: Account) = {
    // create path and map variables
    val path = "/v1/accounts/me".replaceAll("\\{format\\}","json")

    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(body).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    if(String.valueOf(password) != "null") queryParams += "password" -> password.toString
    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getAccount (ticket: String) : Option[Account]= {
    // create path and map variables
    val path = "/v1/accounts/me".replaceAll("\\{format\\}","json")

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Account]).asInstanceOf[Account])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def createConnectionDirect (fetch: String, ticket: String, body: Connection) : Option[Connection]= {
    // create path and map variables
    val path = "/v1/connections".replaceAll("\\{format\\}","json")

    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(body).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(fetch) != "null") queryParams += "fetch" -> fetch.toString
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Connection]).asInstanceOf[Connection])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getConnectionsDirect (ticket: String) : Option[Connection]= {
    // create path and map variables
    val path = "/v1/connections".replaceAll("\\{format\\}","json")

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Connection]).asInstanceOf[Connection])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def deleteConnectionDirect (connectionId: String, ticket: String) = {
    // create path and map variables
    val path = "/v1/connections/{connectionId}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "connectionId" + "\\}",apiInvoker.escape(connectionId))

    

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(connectionId).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "DELETE", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getConnectionDirect (connectionId: String, ticket: String) : Option[Connection]= {
    // create path and map variables
    val path = "/v1/connections/{connectionId}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "connectionId" + "\\}",apiInvoker.escape(connectionId))

    

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(connectionId).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Connection]).asInstanceOf[Connection])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def putConnectionCredentialsDirect (connectionId: String, ticket: String, body: Credentials) = {
    // create path and map variables
    val path = "/v1/connections/{connectionId}/credentials".replaceAll("\\{format\\}","json").replaceAll("\\{" + "connectionId" + "\\}",apiInvoker.escape(connectionId))

    

    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(connectionId, body).filter(_ != null)).size match {
       case 2 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def fetchDirect (connectionId: String, all: String, ticket: String) = {
    // create path and map variables
    val path = "/v1/connections/{connectionId}/fetch".replaceAll("\\{format\\}","json").replaceAll("\\{" + "connectionId" + "\\}",apiInvoker.escape(connectionId))

    

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(connectionId).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(all) != "null") queryParams += "all" -> all.toString
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getDestinations (filtering: String, ticket: String) : Option[Destination]= {
    // create path and map variables
    val path = "/v1/destinations".replaceAll("\\{format\\}","json")

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    if(String.valueOf(filtering) != "null") queryParams += "filtering" -> filtering.toString
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Destination]).asInstanceOf[Destination])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getDocumentsDirect (sortProperty: String, sortDirection: String, ticket: String) : Option[Document]= {
    // create path and map variables
    val path = "/v1/documents".replaceAll("\\{format\\}","json")

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    if(String.valueOf(sortProperty) != "null") queryParams += "sortProperty" -> sortProperty.toString
    if(String.valueOf(sortDirection) != "null") queryParams += "sortDirection" -> sortDirection.toString
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Document]).asInstanceOf[Document])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getDocumentDirect (documentId: String, ticket: String) : Option[Document]= {
    // create path and map variables
    val path = "/v1/documents/{documentId}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "documentId" + "\\}",apiInvoker.escape(documentId))

    

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(documentId).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Document]).asInstanceOf[Document])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def deleteDocumentDirect (documentId: String, ticket: String) = {
    // create path and map variables
    val path = "/v1/documents/{documentId}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "documentId" + "\\}",apiInvoker.escape(documentId))

    

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(documentId).filter(_ != null)).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "DELETE", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def putDocument (documentId: String, ticket: String, body: Document) = {
    // create path and map variables
    val path = "/v1/documents/{documentId}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "documentId" + "\\}",apiInvoker.escape(documentId))

    

    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (List(documentId, body).filter(_ != null)).size match {
       case 2 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "PUT", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def getSources (ticket: String) : Option[Institution]= {
    // create path and map variables
    val path = "/v1/sources".replaceAll("\\{format\\}","json")

    val contentType = {
      "application/json"}

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    if(String.valueOf(ticket) != "null") queryParams += "ticket" -> ticket.toString
    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, None, headerParams.toMap, contentType) match {
        case s: String =>
          Some(ApiInvoker.deserialize(s, "", classOf[Institution]).asInstanceOf[Institution])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  }

