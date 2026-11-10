test_that("theme_ringlight returns a complete theme that builds a plot", {
  thm <- theme_ringlight(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#1B1B1C")
  expect_equal(thm$geom$fill, "#474B5B")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})


test_that("theme_ringlight has a light mode", {
  thm <- theme_ringlight(base_family = "sans", title_family = "sans", mode = "light")
  expect_equal(thm$plot.background$fill, "#EEEEEF")
  expect_equal(thm$geom$fill, "#424656")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
  expect_error(theme_ringlight(base_family = "sans", title_family = "sans", mode = "dim"))
})
