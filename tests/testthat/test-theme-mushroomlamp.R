test_that("theme_mushroomlamp returns a complete theme that builds a plot", {
  thm <- theme_mushroomlamp(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#12100E")
  expect_equal(thm$geom$fill, "#FFB547")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_mushroomlamp has a light mode", {
  thm <- theme_mushroomlamp(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#F1EDE9")
  expect_equal(thm$geom$fill, "#FFB547")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_mushroomlamp(base_family = "sans", title_family = "sans", mode = "dim"))
})
