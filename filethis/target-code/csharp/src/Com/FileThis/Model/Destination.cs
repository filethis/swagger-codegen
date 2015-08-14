using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.FileThis.Model {
  public class Destination {
    /* Human-readable name of the destination. [RO] */
    public string name { get; set; }

    /* Unique Id for the destination. [RO] */
    public int? id { get; set; }

    /* Whether the destination is exposed to the public or not. [RO] */
    public string state { get; set; }

    /* Type of destination (FileThis Cloud, external provider, or FileThis desktop). [RO] */
    public string type { get; set; }

    /* The storage provider. [RO] */
    public string provider { get; set; }

    /* Filename of provider's company logo. [RO] */
    public string logo { get; set; }

    /* Link to the provider's website. [RO] */
    public string url { get; set; }

    /* URL for FileThis help page that describes the destination. [RO] */
    public string helpUrl { get; set; }

    /* Application Id for iOS mobile app. [RO] */
    public string iosAppId { get; set; }

    /* Application Id for Android mobile app. [RO] */
    public string androidAppId { get; set; }

    /* Default web page for mobile app store. [RO] */
    public string appUrl { get; set; }

    /* An ordinal number that suggests a preferred order for display to users. [RO] */
    public int? ordinal { get; set; }

    /* URL of destination's company logo. [RO] */
    public string logoUrl { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Destination {\n");
      sb.Append("  name: ").Append(name).Append("\n");
      sb.Append("  id: ").Append(id).Append("\n");
      sb.Append("  state: ").Append(state).Append("\n");
      sb.Append("  type: ").Append(type).Append("\n");
      sb.Append("  provider: ").Append(provider).Append("\n");
      sb.Append("  logo: ").Append(logo).Append("\n");
      sb.Append("  url: ").Append(url).Append("\n");
      sb.Append("  helpUrl: ").Append(helpUrl).Append("\n");
      sb.Append("  iosAppId: ").Append(iosAppId).Append("\n");
      sb.Append("  androidAppId: ").Append(androidAppId).Append("\n");
      sb.Append("  appUrl: ").Append(appUrl).Append("\n");
      sb.Append("  ordinal: ").Append(ordinal).Append("\n");
      sb.Append("  logoUrl: ").Append(logoUrl).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
