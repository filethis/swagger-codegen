using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.FileThis.Model {
  public class Document {
    /* Name of the document (default is typically its filename) */
    public string name { get; set; }

    /* Unique Id of the document. Returned as a string. [RO] */
    public int? id { get; set; }

    /* Size of the document file in bytes. [RO] */
    public long? size { get; set; }

    /* Whether this is a Pro-Services shared document, or not. [RO] */
    public bool? shared { get; set; }

    /* MIME type of the document. [RO] */
    public string mimeType { get; set; }

    /* Unique Id of the destination to which the document was delivered. [RO] */
    public int? destinationId { get; set; }

    /* Unique Id of document's account. Returned as a string. [RO] */
    public int? accountId { get; set; }

    /* Number of pages in the document. [RO] */
    public int? pageCount { get; set; }

    /* Kind of document. [RO] */
    public string kind { get; set; }

    /* Delivery state. [RO] */
    public string deliveryState { get; set; }

    /* Relevant date of document */
    public date-time relevantDate { get; set; }

    /* The date on which an action can be taken on a document (eg. Credit card payment due). [RO] */
    public date-time actionDate { get; set; }

    /* Date that the document was originally created. [RO] */
    public date-time createdDate { get; set; }

    /* Date that the document was added to FileThis. [RO] */
    public date-time addedDate { get; set; }

    /* Date the document was delivered to its destination. [RO] */
    public date-time deliveredDate { get; set; }

    /* The original name of the document (typically its filename). [RO] */
    public string originalName { get; set; }

    /* Relevant date determined by fetcher. [RO] */
    public date-time originalRelevantDate { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Document {\n");
      sb.Append("  name: ").Append(name).Append("\n");
      sb.Append("  id: ").Append(id).Append("\n");
      sb.Append("  size: ").Append(size).Append("\n");
      sb.Append("  shared: ").Append(shared).Append("\n");
      sb.Append("  mimeType: ").Append(mimeType).Append("\n");
      sb.Append("  destinationId: ").Append(destinationId).Append("\n");
      sb.Append("  accountId: ").Append(accountId).Append("\n");
      sb.Append("  pageCount: ").Append(pageCount).Append("\n");
      sb.Append("  kind: ").Append(kind).Append("\n");
      sb.Append("  deliveryState: ").Append(deliveryState).Append("\n");
      sb.Append("  relevantDate: ").Append(relevantDate).Append("\n");
      sb.Append("  actionDate: ").Append(actionDate).Append("\n");
      sb.Append("  createdDate: ").Append(createdDate).Append("\n");
      sb.Append("  addedDate: ").Append(addedDate).Append("\n");
      sb.Append("  deliveredDate: ").Append(deliveredDate).Append("\n");
      sb.Append("  originalName: ").Append(originalName).Append("\n");
      sb.Append("  originalRelevantDate: ").Append(originalRelevantDate).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
