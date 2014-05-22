package models

import play.api.db._
import play.api.Play.current

object Dao {

  case class Question(id: Long, body: String, yes: Int, no: Int, answer: Option[Boolean])

  def allQuestions: List[Question] = {
    var out: List[Question] = List()
    val conn = DB.getConnection()
    try {
      val stmt = conn.createStatement
      val rs = stmt.executeQuery("SELECT * from question")
      while (rs.next()) {
        val id: Long = rs.getLong("id")
        val question: String = rs.getString("question")
        val yesVal: Int = rs.getInt("yes_value")
        val noVal: Int = rs.getInt("no_value")
        val answer: Boolean = rs.getBoolean("answer")
        val answerOpt: Option[Boolean] = if (rs.wasNull()) None else Some(answer)
        out = Question(id, question, yesVal, noVal, answerOpt) :: out
      }
      out
    } finally {
      conn.close()
    }
  }

}
