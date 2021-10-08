package smtlib
package interpreters

import smtlib.lexer.Lexer
import smtlib.parser.Parser
import smtlib.printer.{Printer, RecursivePrinter}
import trees.Commands._

import java.io.BufferedReader

class CVC4Interpreter(executable: String,
                      args: Array[String],
                      printer: Printer = RecursivePrinter,
                      parserCtor: BufferedReader => Parser = out => new Parser(new Lexer(out)))
  extends ProcessInterpreter(executable, args, printer, parserCtor) {

  printer.printCommand(SetOption(PrintSuccess(true)), in)
  in.write("\n")
  in.flush()
  parser.parseGenResponse

}

object CVC4Interpreter {

  def buildDefault: CVC4Interpreter = {
    val executable = "cvc4"
    val args = Array("-q",
                     "-i",
                     "--produce-models",
                     "--dt-rewrite-error-sel",
                     "--print-success",
                     "--lang", "smt2.5")
    new CVC4Interpreter(executable, args)
  }

}
