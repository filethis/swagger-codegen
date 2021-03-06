import com.wordnik.swagger.codegen.BasicCSharpGenerator

object FileThisCSharpGenerator extends BasicCSharpGenerator {
  def main(args: Array[String]) = generateClient(args)

  // location of templates
  override def templateDir = "csharp"

  // where to write generated code
  override def destinationDir = "filethis/target-code/csharp/src"

  // package for api invoker, error files
  override def invokerPackage = Some("Com.FileThis")

  // package for models
  override def modelPackage = Some("Com.FileThis.Model")

  // package for api classes
  override def apiPackage = Some("Com.FileThis.Api")

  // supporting classes
  override def supportingFiles =
    List(
      ("apiInvoker.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiInvoker.cs"),
      ("apiException.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiException.cs"),
      ("Newtonsoft.Json.dll", "filethis/target-code/csharp/bin", "Newtonsoft.Json.dll"),
      ("compile.mustache", "filethis/target-code/csharp", "compile.bat"))
}

