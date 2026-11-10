#' Voice note theme
#'
#' Voice notes are short recorded messages sent in a chat instead of
#' typing. A voice note is a short recorded message sent in place of a
#' text. It descends from voicemail, which lets a caller leave a recorded
#' message for later. Today, internet calling and messaging apps put voice,
#' voice messages, and text side by side on the same phone.
#'
#' The palette follows the article's pink message slips and voicemail
#' light, with record red, mic gray, call green, waveform violet, and
#' amber.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Trebuchet MS when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Voicemail](https://en.wikipedia.org/wiki/Voicemail) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Voice note") +
#'   theme_voicenote(base_family = "sans", title_family = "sans")
theme_voicenote <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Trebuchet MS", "Trebuchet MS Bold.ttf")) {
  cols <- voicenote_cols
  marks <- voicenote_marks
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["text"]]),
      plot.background = ggplot2::element_rect(fill = cols[["background"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["title"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["text"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["text"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["strip"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["striptext"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["background"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = marks,
      palette.colour.discrete = marks,
      # default marks
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["accent"]],
                                   colour = cols[["outline"]],
                                   fill = cols[["fill"]],
                                   family = base_family)
    )
}

# Sampled from a diagram of how a voicemail system routes and stores messages
voicenote_cols <- c(
  background = "#FAF4F6",
  panel = "#FEFCFC",
  grid = "#DDD8DA",
  text = "#402128",
  frame = "#C2185B",
  title = "#C2185B",
  strip = "#402128",
  striptext = "#FAF4F6",
  accent = "#E53935",
  outline = "#402128",
  fill = "#E87AA4"
)

voicenote_marks <- c("#E87AA4", "#E53935", "#6B7280", "#2EAD5B", "#7B61FF", "#F2A900")

