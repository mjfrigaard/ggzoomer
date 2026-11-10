#' Mermaidcore theme
#'
#' Mermaidcore is a fashion trend of shells, pearls, sequins, and
#' iridescent sea colors. By 2023, #mermaidcore had passed 333 million
#' views on TikTok. Writers tie it to Gen Z's nostalgia, romanticism, and
#' need for escapism and fantasy. It draws on The Little Mermaid, H2O: Just
#' Add Water, and Barbie mermaid films. It reads younger and more whimsical
#' than coastal grandmother, and an edgier offshoot is called mermaid
#' sleaze.
#'
#' The palette follows iridescent sheer fabrics, pearls, and shells:
#' seafoam, ocean teal, lagoon blue, iridescent lilac, shell pink, and
#' treasure gold on pearl white.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Apple Chancery when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Mermaid](https://en.wikipedia.org/wiki/Mermaid) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Mermaidcore") +
#'   theme_mermaidcore(base_family = "sans", title_family = "sans")
theme_mermaidcore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Apple Chancery", "Apple Chancery.ttf")) {
  cols <- mermaidcore_cols
  marks <- mermaidcore_marks
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

# Sampled from a cutaway nautilus shell showing its pearly chambers (Wikipedia's Nacre article)
mermaidcore_cols <- c(
  background = "#F0EAD6",
  panel = "#F6F4EE",
  grid = "#D3CEBB",
  text = "#2F263C",
  frame = "#4B2E83",
  title = "#4B2E83",
  strip = "#2F263C",
  striptext = "#F0EAD6",
  accent = "#008B8B",
  outline = "#2F263C",
  fill = "#009464"
)

mermaidcore_marks <- c("#009464", "#008B8B", "#3FA9F5", "#8268AD", "#E4B5B6", "#D4AF37")

