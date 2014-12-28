using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.FileThis.Model {
  public class Connection {
    /* Human-readable name of the connection. Defaults to that of its source. */
    public string name { get; set; }

    /* The unique Id of the connection. Returned as a string. [RO] */
    public int? id { get; set; }

    /* The current state of the connection. [RO] */
    public string state { get; set; }

    /* Whether fetches will be done for the connection not */
    public bool? enabled { get; set; }

    /* Information concerning the connection that resulted from the last fetch. [RO] */
    public string info { get; set; }

    /* The connection source's site login password. Base64-encoded. [WO] */
    public string password { get; set; }

    /* The connection source's site login username. Base64-encoded. [WO] */
    public string username { get; set; }

    /* Unique Id of connection's account. Returned as a string. [RO] */
    public int? accountId { get; set; }

    /* Whether the current connection source's site login credentials have been used successfully, or not. [RO] */
    public string validation { get; set; }

    /* The period of time between automatic fetches. [WO] */
    public string period { get; set; }

    /* The number of new documents downloaded during the last fetch. [RO] */
    public int? documentCount { get; set; }

    /* Whether all documents should be fetched, or just any new ones */
    public bool? fetchAll { get; set; }

    /* Date on which the next fetch attempt will happen. [RO] */
    public date-time attemptDate { get; set; }

    /* Date when last checked for new documents. [RO] */
    public date-time checkedDate { get; set; }

    /* Unique Id of connection's document source. Returned as a string. [RO] */
    public int? sourceId { get; set; }

    /* Date of last successful fetch, whether it returned documents, or not. [RO] */
    public date-time successDate { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Connection {\n");
      sb.Append("  name: ").Append(name).Append("\n");
      sb.Append("  id: ").Append(id).Append("\n");
      sb.Append("  state: ").Append(state).Append("\n");
      sb.Append("  enabled: ").Append(enabled).Append("\n");
      sb.Append("  info: ").Append(info).Append("\n");
      sb.Append("  password: ").Append(password).Append("\n");
      sb.Append("  username: ").Append(username).Append("\n");
      sb.Append("  accountId: ").Append(accountId).Append("\n");
      sb.Append("  validation: ").Append(validation).Append("\n");
      sb.Append("  period: ").Append(period).Append("\n");
      sb.Append("  documentCount: ").Append(documentCount).Append("\n");
      sb.Append("  fetchAll: ").Append(fetchAll).Append("\n");
      sb.Append("  attemptDate: ").Append(attemptDate).Append("\n");
      sb.Append("  checkedDate: ").Append(checkedDate).Append("\n");
      sb.Append("  sourceId: ").Append(sourceId).Append("\n");
      sb.Append("  successDate: ").Append(successDate).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
