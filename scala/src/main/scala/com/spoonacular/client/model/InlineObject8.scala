package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._

/**
 * 
 * @param locale The locale of the returned category, supported is en_US and en_GB.
 */
case class InlineObject8(locale: Option[String]
                )

object InlineObject8 {
    /**
     * Creates the codec for converting InlineObject8 from and to JSON.
     */
    implicit val decoder: Decoder[InlineObject8] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineObject8] = deriveEncoder
}
