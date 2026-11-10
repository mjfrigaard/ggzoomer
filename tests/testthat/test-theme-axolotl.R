test_that("theme_axolotl returns a complete theme that builds a plot", {
  thm <- theme_axolotl(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#FBEFF1")
  expect_equal(thm$geom$fill, "#6B4F2A")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
