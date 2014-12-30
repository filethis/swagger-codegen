import com.wordnik.swagger.codegen.BasicPythonGenerator

import java.io.File

object FileThisPythonGenerator extends BasicPythonGenerator {
  def main(args: Array[String]) = generateClient(args)

  override def destinationDir = "filethis/target-code/python"

  override def supportingFiles = List(
    ("__init__.mustache", destinationDir, "__init__.py"),
    ("swagger.mustache", destinationDir + File.separator + apiPackage.getOrElse(""), "swagger.py"),
    ("__init__.mustache", destinationDir + File.separator + modelPackage.getOrElse(""), "__init__.py"))
}
