test_that("theme_mushroomlamp returns a complete theme that builds a plot", {
  thm <- theme_mushroomlamp(base_family = "sans", title_family = "sans")
  expect_s3_class(thm, "theme")
  expect_equal(thm$plot.background$fill, "#E6EFF3")
  expect_equal(thm$geom$fill, "#76D964")
  p <- ggplot2::ggplot(data.frame(x = c("a", "b", "b")), ggplot2::aes(x = x, fill = x)) +
    ggplot2::geom_bar() +
    ggplot2::labs(title = "title")
  expect_no_error(ggplot2::ggplotGrob(p + thm))
})
