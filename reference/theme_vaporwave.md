# Vaporwave theme

Vaporwave is a 2010s music genre and meme aesthetic of slowed down mall
music, old computers, and pink and teal gradients. Vaporwave started as
a 2010s music and meme genre that poked fun at late capitalism. It
reaches Gen Z as secondhand nostalgia through TikTok edits, memes, and
YouTube playlists. Commentators say Gen Z treats it less as satire and
more as sincere emotional expression. Some argue it still belongs more
to millennials.

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

The palette follows pastel gradients over grid floors and neon sunsets:
hot pink, electric cyan, mint, lavender, pale yellow, and deep purple.

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
