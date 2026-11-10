test_that("theme_gorpcore returns a complete theme that builds a plot", {
  thm <- theme_gorpcore(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#F3F1EC")
  expect_equal(thm$geom$fill, "#F26B1D")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
