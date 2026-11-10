# Speedrun theme

Speedrunning is beating a video game as fast as possible, often live for
charity. Speedrunning means beating a video game as fast as possible.
Runners share videos and livestreams on YouTube and Twitch, and
community leaderboards rank the fastest runs. Games Done Quick, the
largest speedrunning marathon, had raised over \$37 million for charity
by January 2022. Many runners say the community has helped their mental
health.

## Usage

``` r
theme_speedrun(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("PT Mono", "PTMono.ttc"),
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

  Title font family. Defaults to PT Mono when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the article's timers and leaderboards: split timer
gold (best segment), green (ahead), red (behind), white digits, and tool
assisted cyan and purple.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Speedrunning](https://en.wikipedia.org/wiki/Speedrunning) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Speedrun") +
  theme_speedrun(base_family = "sans", title_family = "sans")
```
