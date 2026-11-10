# Livestream theme

Livestreaming is broadcasting video in real time, from gaming streams to
vlogs filmed on the street. Twitch calls its core audience of Gen Z and
younger millennials Generation Twitch. Researchers find that Gen Z
spends far more time on video than older generations. Marketers report
that interaction, not passive watching, keeps them engaged. Emotes act
as a shared shorthand, with meanings unique to each streamer's
community.

## Usage

``` r
theme_livestream(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Arial Black", "Arial Black.ttf"),
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

  Title font family. Defaults to Arial Black when it's available,
  otherwise `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows a Twitch stream: Twitch purple, the live red badge,
Prime blue, overlay green, ice white chat text, and chat panel gray.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Live streaming](https://en.wikipedia.org/wiki/Live_streaming) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Livestream") +
  theme_livestream(base_family = "sans", title_family = "sans")
```
