# E-girl theme

E-girls and e-boys are a TikTok youth subculture that mixes emo, scene,
and mall goth fashion with anime and K-pop style. E-girls and e-boys
reached the mainstream in 2019 through TikTok transformation videos.
TikTok lacked Instagram's polish and filters, so the look pushed back on
perfectly edited influencer photos. In 2020, "e-girl style" was a top 10
trending fashion term on Google, and celebrities like Dua Lipa copied
its bleached stripes. Designers at Celine later built collections around
e-boy style.

## Usage

``` r
theme_egirl(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Silom", "Silom.ttf"),
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

  Title font family. Defaults to Silom when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the e-girl look: neon pink and blue dyed hair,
silver chains, a red band tee print, bleached blonde streaks, and anime
pink blush on black.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[E-girl and e-boy
subculture](https://en.wikipedia.org/wiki/E-girl_and_e-boy_subculture)
on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "E-girl") +
  theme_egirl(base_family = "sans", title_family = "sans")
```
