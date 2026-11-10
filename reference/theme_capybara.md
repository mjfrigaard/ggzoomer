# Capybara theme

Capybaras are the largest living rodents and a famously calm internet
mascot. Capybaras became a figure in meme culture in the 2020s. A common
meme format pairs a capybara with the song "After Party" by Don Toliver,
and a song about capybaras became a TikTok hit in 2022. Capybaras also
stand for calm. People see them as unflappable, and their personalities
have been called "buddha-like."

## Usage

``` r
theme_capybara(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Marion", "Marion.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Marion when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the ["After Party" single
cover](https://en.wikipedia.org/wiki/File:Don_Toliver_-_After_Party_%28single_cover%29.jpeg)
that the article's capybara memes pair with: a purple lowrider hearse,
lavender chrome, a near black shadow, the gray signpost and ground, a
mauve HEAVEN sign, and the hand lettered title, all on cream paper.

## See also

[Capybara](https://en.wikipedia.org/wiki/Capybara) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Capybara") +
  theme_capybara(base_family = "sans", title_family = "sans")
```
