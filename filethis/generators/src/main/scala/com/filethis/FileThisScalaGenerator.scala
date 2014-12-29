import com.wordnik.swagger.codegen.BasicScalaGenerator

object FileThisScalaGenerator extends BasicScalaGenerator {
  def main(args: Array[String]) = generateClient(args)

  // package for api invoker, error files
  override def invokerPackage = Some("com.filethis.client")

  // where to write generated code
  override def destinationDir = "filethis/target/scala/src/main/scala"

  // package for models
  override def modelPackage = Some("com.filethis.client.model")

  // package for api classes
  override def apiPackage = Some("com.filethis.client.api")

  // supporting classes
  override def supportingFiles = List(
    ("apiInvoker.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiInvoker.scala"),
    ("pom.mustache", "filethis/target/scala", "pom.xml")
  )
}