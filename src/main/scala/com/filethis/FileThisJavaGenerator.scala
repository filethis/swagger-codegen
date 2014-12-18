import com.wordnik.swagger.codegen.BasicScalaGenerator

object FileThisJavaGenerator extends BasicScalaGenerator {
  def main(args: Array[String]) = generateClient(args)

  // location of templates
  override def templateDir = "scala"

  // where to write generated code
  override def destinationDir = "client/scala/src/main/scala"

  // api invoker package
  override def invokerPackage = "com.filethis.client"

  // package for models
  override def modelPackage = Some("com.filethis.client.model")

  // package for api classes
  override def apiPackage = Some("com.filethis.client.api")

  // supporting classes
  override def supportingFiles = List(
    ("apiInvoker.mustache", destinationDir + java.io.File.separator + packageName.replaceAll("\\.", java.io.File.separator), "ApiInvoker.scala"),
    ("pom.mustache", destinationDir, "pom.xml")
  )
}