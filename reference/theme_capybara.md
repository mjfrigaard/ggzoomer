# Capybara theme

Capybaras are the largest living rodents and a famously calm internet
mascot. The palette follows the article's reddish brown back and
yellowish brown belly, plus the scarlet ibis, green anaconda, river
water, and dark mud of its habitat.

## Usage

``` r
theme_capybara(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marion", "Marion.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Marion when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Capybara](https://en.wikipedia.org/wiki/Capybara) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Capybara") +
  theme_capybara(base_family = "sans", title_family = "sans")
```
