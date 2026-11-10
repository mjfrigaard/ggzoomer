# Weirdcore theme

Weirdcore is an internet aesthetic of low quality images, liminal
spaces, and unsettling captions. Gen Z led weirdcore on TikTok, YouTube,
Instagram, and Discord, and it surged around 2021. It recycles late
1990s and 2000s images that many in Gen Z barely remember. Commentators
read it as an outlet for anxiety, hazy memory, and despair. It is a
rough counterpoint to polished clean girl feeds.

## Usage

``` r
theme_weirdcore(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Times New Roman", "Times New Roman Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Times New Roman when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows low quality surreal images: fluorescent hallway
yellow, liminal pool blue, grass green, caption red, washed sky blue,
and CRT black.

## See also

[Weirdcore](https://en.wikipedia.org/wiki/Weirdcore) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Weirdcore") +
  theme_weirdcore(base_family = "sans", title_family = "sans")
```
