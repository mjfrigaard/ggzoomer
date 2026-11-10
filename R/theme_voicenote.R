#' Voice note theme
#'
#' Voice notes are short recorded messages sent in a chat instead of
#' typing. Voice notes boomed during the pandemic and became Gen Z's
#' favorite way to keep in touch, partly because of phone call anxiety.
#' Preply found that 84% of Gen Z use them, compared with 47% of baby
#' boomers. Forty percent of users say a voice note can replace a call.
#' Still, 31% of Gen Z find incoming voice notes inconvenient, and many
#' long ones go unheard.
#'
#' The palette follows a voice note bubble: WhatsApp green, iMessage blue,
#' waveform gray, record red, dark mode charcoal, and chat bubble green.
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
  background = "#FAFAFA",
  panel = "#FCFCFC",
  grid = "#DDDDDD",
  text = "#2A2A2C",
  frame = "#1C1C1E",
  title = "#1C1C1E",
  strip = "#2A2A2C",
  striptext = "#FAFAFA",
  accent = "#0A84FF",
  outline = "#2A2A2C",
  fill = "#25D366"
)

voicenote_marks <- c("#25D366", "#0A84FF", "#8E8E93", "#FF3B30", "#1C1C1E", "#B5D0A0")

