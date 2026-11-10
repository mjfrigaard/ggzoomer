#' Air fryer theme
#'
#' Air fryers are small countertop convection ovens that blow hot air
#' around food. Air fryers went from a novelty to a common kitchen
#' appliance in the 2020s. Philips launched the first Airfryer in 2010, and
#' by 2018 people used the name for any brand. About 36% of US households
#' had a convection oven in 2020. By 2023, an estimated 60% had one. In a
#' 2024 UK study, one in five people said the air fryer was the cooking
#' device they used most.
#'
#' The palette follows the colors the popular Crispi air fryer comes in:
#' Cherry Crush, Sage Green, Electric Cobalt, Butter Yellow, Cyberspace
#' navy, and Frosted Lilac on Stone.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Tahoma when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Convection oven](https://en.wikipedia.org/wiki/Convection_oven) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Air fryer") +
#'   theme_airfryer(base_family = "sans", title_family = "sans")
theme_airfryer <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Tahoma", "Tahoma Bold.ttf")) {
  cols <- airfryer_cols
  marks <- airfryer_marks
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

# Sampled from an air fryer basket of reheated potatoes on a kitchen counter
airfryer_cols <- c(
  background = "#E7E2D9",
  panel = "#EEECE9",
  grid = "#CBC6BD",
  text = "#212940",
  frame = "#23304F",
  title = "#23304F",
  strip = "#212940",
  striptext = "#E7E2D9",
  accent = "#7F9A72",
  outline = "#212940",
  fill = "#C42B3C"
)

airfryer_marks <- c("#C42B3C", "#7F9A72", "#2F5FD0", "#D6B84F", "#23304F", "#A48FCB")

