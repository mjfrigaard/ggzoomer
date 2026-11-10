# ASMR theme

ASMR (autonomous sensory meridian response) is the tingling some people
feel while watching whisper, tapping, and crinkle videos. ASMR is the
calm, tingling feeling some people get from whispers, tapping, and other
quiet sounds. YouTube turned it into a genre. Many ASMR videos show one
person whispering or tapping straight into the camera. The Louvre
invited the channel PARIS ASMR to film there in 2019, and the first
major ASMR exhibition opened in Sweden in 2020. [Gibi
ASMR](https://en.wikipedia.org/wiki/Gibi_ASMR), one of YouTube's top
ASMR creators, started her channel in 2016 and reached one million
subscribers about a year after college.

## Usage

``` r
theme_asmr(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Optima", "Optima.ttc"),
  mode = c("dark", "light")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Optima when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the set behind [Gibi
ASMR](https://en.wikipedia.org/wiki/Gibi_ASMR)'s videos: a deep indigo
backdrop strung with blue and white fairy lights, a lilac top, red and
green bokeh, warm gold light, and pink nails.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[ASMR](https://en.wikipedia.org/wiki/ASMR) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "ASMR") +
  theme_asmr(base_family = "sans", title_family = "sans")
```
