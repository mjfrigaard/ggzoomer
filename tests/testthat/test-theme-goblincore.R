test_that("theme_goblincore returns a complete theme that builds a plot", {
  thm <- theme_goblincore(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#1C1712")
  expect_equal(thm$geom$fill, "#7A9A3A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_goblincore has a light mode", {
  thm <- theme_goblincore(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#FAEBDE")
  expect_equal(thm$geom$fill, "#7A9A3A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_goblincore(base_family = "sans", title_family = "sans", mode = "dim"))
})
