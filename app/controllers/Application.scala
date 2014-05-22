package controllers

import play.api.mvc._
import models.Dao

object Application extends Controller {

  def index = Action {

    Ok(Dao.allQuestions.toString())
  }

}