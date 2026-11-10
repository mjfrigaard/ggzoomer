# Streak theme

Streaks are the daily counters that apps use to keep you coming back, a
common gamification trick. A streak counts how many days in a row you've
done something. It is a common gamification tool, which adds points,
badges, and leaderboards to things that aren't games. In the language
app [Duolingo](https://en.wikipedia.org/wiki/Duolingo), any finished
lesson counts toward a daily streak marked with a fire symbol. Its
Friend Streak lets up to five friends keep a streak together.

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

## Details

The palette follows the article's points, badges, levels, and progress
bars: streak flame orange and red, gold badge, XP purple, progress
green, and a frozen streak blue.

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
