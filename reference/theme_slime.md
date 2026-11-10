# Slime theme

Slime is the stretchy toy that kids make at home and watch in satisfying
videos. The slime trend took off in 2016 and peaked in the summer of
slime in 2017. It spread on YouTube and Instagram, and later on TikTok.
Teens watch slime videos as ASMR to relax. Gen Z and younger millennials
have built slime businesses worth millions, though experts warn about
boric acid in homemade recipes.

## Usage

``` r
theme_slime(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Noteworthy", "Noteworthy.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Noteworthy when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows homemade glue slime: slime green, bubblegum pink,
glitter purple, electric blue, neon yellow, and clear glue on fluffy
white.

## See also

[Slime (toy)](https://en.wikipedia.org/wiki/Slime_(toy)) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Slime") +
  theme_slime(base_family = "sans", title_family = "sans")
```
