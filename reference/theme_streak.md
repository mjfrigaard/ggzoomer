# Streak theme

Streaks are the daily counters that apps use to keep you coming back, a
common gamification trick. The palette follows the article's points,
badges, levels, and progress bars: streak flame orange and red, gold
badge, XP purple, progress green, and a frozen streak blue.

## Usage

``` r
theme_streak(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Phosphate", "Phosphate.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Phosphate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Gamification](https://en.wikipedia.org/wiki/Gamification) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Streak") +
  theme_streak(base_family = "sans", title_family = "sans")
```
