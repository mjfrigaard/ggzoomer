# Clean girl theme

The clean girl aesthetic is a minimal beauty and wellness trend built on
slicked back hair, a no makeup makeup look, and a limited palette. The
clean girl aesthetic appeared at the end of 2021, and TikTok is its main
platform. By February 2026, the \#CleanGirl tag had over 1.2 million
videos. The look is especially popular with Gen Z and Gen Alpha. Its
focus on skincare, diet, and exercise makes it a lifestyle as much as a
style.

## Usage

``` r
theme_cleangirl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Didot", "Didot.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Didot when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's no makeup makeup look (heavy rosy
blush, perfect brows, brown lip liner), its whites, blacks, grays, and
light neutrals, and the matcha it mentions.

## See also

[Clean girl
aesthetic](https://en.wikipedia.org/wiki/Clean_girl_aesthetic) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Clean girl") +
  theme_cleangirl(base_family = "sans", title_family = "sans")
```
