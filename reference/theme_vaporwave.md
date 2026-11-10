# Vaporwave theme

Vaporwave is a 2010s music genre and meme aesthetic of slowed down mall
music, old computers, and pink and teal gradients. Vaporwave is an
internet music microgenre, aesthetic, and meme from the early 2010s. It
loops and slows down corporate mood music, ads, and pop from earlier
decades. The scene grew on Reddit, Last.fm, and Bandcamp, and it often
pokes fun at consumer culture. Fans called it a "dead" genre soon after
it went mainstream in 2012, yet dozens of offshoots followed.

## Usage

``` r
theme_vaporwave(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Krungthep", "Krungthep.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Krungthep when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the 1980s and 1990s anime and mall imagery the
article cites, as the classic vaporwave pastels: pink, cyan, mint,
purple, pale yellow, and deep violet.

## See also

[Vaporwave](https://en.wikipedia.org/wiki/Vaporwave) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Vaporwave") +
  theme_vaporwave(base_family = "sans", title_family = "sans")
```
