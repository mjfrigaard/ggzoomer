# Doomscroll theme

Doomscrolling is spending far too long scrolling through upsetting or
endless feeds. Doomscrolling is endlessly scrolling bad news, usually
late at night. A 2024 study found that 53% of Gen Z say they doomscroll,
compared with about a third of Americans overall. Studies link the habit
to stress and anxiety. It even spills into spending: Fortune reported in
2024 that Gen Z spent 21% more on holiday shopping to cope.

## Usage

``` r
theme_doomscroll(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Verdana", "Verdana Bold.ttf"),
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

  Title font family. Defaults to Verdana when it's available, otherwise
  `"sans"`.

- mode:

  `"dark"` (the default) or `"light"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows a glowing phone in a dark room: screen glow blue,
notification red, blue light, slate gray, breaking news red, and dim
white.

Use `mode = "light"` for a light background with dark text and darker
marks.

## See also

[Doomscrolling](https://en.wikipedia.org/wiki/Doomscrolling) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Doomscroll") +
  theme_doomscroll(base_family = "sans", title_family = "sans")
```
