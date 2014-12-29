import com.wordnik.swagger.codegen.BasicJavaGenerator

object FileThisJavaGenerator extends BasicJavaGenerator {
  def main(args: Array[String]) = generateClient(args)

  // location of templates
  override def templateDir = "src/main/resources/Java"

  // where to write generated code
  override def destinationDir = "filethis/target/java/src/main/java"

  // package for api invoker, error files
  override def invokerPackage = Some("com.filethis.client")

  // package for models
  override def modelPackage = Some("com.filethis.client.model")

  // package for api classes
  override def apiPackage = Some("com.filethis.client.api")

  additionalParams ++= Map(
    "artifactId" -> "swagger-filethis",
    "artifactVersion" -> "1.0.0",
    "groupId" -> "com.filethis")

  // supporting classes
  override def supportingFiles =
    List(
      ("apiInvoker.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiInvoker.java"),
      ("JsonUtil.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "JsonUtil.java"),
      ("apiException.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiException.java"),
      ("pom.mustache", "filethis/target/java", "pom.xml"))
}
