using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.FileThis.Model {
  public class Institution {
    /* Human-readable name of the source. [RO] */
    public string name { get; set; }

    /* The unique Id of the source. [RO] */
    public int? id { get; set; }

    /* Whether the source is enabled for fetching, or not. [RO] */
    public string state { get; set; }

    /* The type of institution. [RO] */
    public string type { get; set; }

    /* A string to be displayed to users that gives special instructions. [RO] */
    public string info { get; set; }

    /* An integer representing the relative popularity of this source. [RO] */
    public int? popularity { get; set; }

    /* Link for the home page of the source's website. [RO] */
    public string homePageUrl { get; set; }

    /* A phone number for the source institution. [RO] */
    public string phone { get; set; }

    /* Filename of institution's company logo. [RO] */
    public string logo { get; set; }

    /* The 'financial institution id' for the source. [RO] */
    public string fid { get; set; }

    /* URL of institution's company logo. [RO] */
    public string logoUrl { get; set; }

    /* Date that the source was added to FileThis. [RO] */
    public date-time addedDate { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Institution {\n");
      sb.Append("  name: ").Append(name).Append("\n");
      sb.Append("  id: ").Append(id).Append("\n");
      sb.Append("  state: ").Append(state).Append("\n");
      sb.Append("  type: ").Append(type).Append("\n");
      sb.Append("  info: ").Append(info).Append("\n");
      sb.Append("  popularity: ").Append(popularity).Append("\n");
      sb.Append("  homePageUrl: ").Append(homePageUrl).Append("\n");
      sb.Append("  phone: ").Append(phone).Append("\n");
      sb.Append("  logo: ").Append(logo).Append("\n");
      sb.Append("  fid: ").Append(fid).Append("\n");
      sb.Append("  logoUrl: ").Append(logoUrl).Append("\n");
      sb.Append("  addedDate: ").Append(addedDate).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
