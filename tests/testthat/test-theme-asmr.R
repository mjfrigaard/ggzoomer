test_that("theme_asmr returns a complete theme that builds a plot", {
  thm <- theme_asmr(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#F1EEF8")
  expect_equal(thm$geom$fill, "#2836D9")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
