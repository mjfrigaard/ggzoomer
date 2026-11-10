test_that("theme_lightstick returns a complete theme that builds a plot", {
  thm <- theme_lightstick(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#1B1B1B")
  expect_equal(thm$geom$fill, "#00F327")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_lightstick has a light mode", {
  thm <- theme_lightstick(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#EEEEEE")
  expect_equal(thm$geom$fill, "#00E102")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_lightstick(base_family = "sans", title_family = "sans", mode = "dim"))
})
