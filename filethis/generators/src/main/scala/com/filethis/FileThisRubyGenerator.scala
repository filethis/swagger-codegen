import com.wordnik.swagger.codegen.BasicRubyGenerator

object FileThisRubyGenerator extends BasicRubyGenerator {
  def main(args: Array[String]) = generateClient(args)

  // to avoid recompiling ...
  override def templateDir = "src/main/resources/ruby"

  // where to write generated code
  override def destinationDir = "filethis/target/ruby"
}