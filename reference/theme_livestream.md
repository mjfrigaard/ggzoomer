# Livestream theme

Livestreaming is broadcasting video in real time, from gaming streams to
vlogs filmed on the street. Livestreaming is video broadcast in real
time. Twitch and Kick are popular places to watch people play video
games, from esports to speedruns. Chat is a key feature. Viewers talk
with the streamer and with each other while the stream is live. Kick
alone averaged 235,000 live streams a day by June 2023.

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

The palette follows a live broadcast as the article describes it: the
red live badge, stream purple, chat green, viewer blue, and donation
gold on a dark player.

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
