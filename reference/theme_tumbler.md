# Tumbler theme

Insulated tumblers and water bottles (vacuum flasks) became a status
accessory in the 2020s. Gen Z and TikTok drove the boom in the 40 ounce
Stanley Quencher. The \#StanleyTumbler tag drew tens of millions of
views, and limited color drops caused store stampedes in 2023 and 2024.
A cup once marketed to rugged dads became an affordable, reusable status
symbol carried across campuses and gyms. Pale Barbie pink became the
most coveted shade.

## Usage

``` r
theme_tumbler(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Copperplate", "Copperplate.ttc")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Copperplate when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the 40 ounce Stanley Quencher color drops: Barbie
pink, lilac, seafoam, hammertone green, polished steel, and black on
cream.

## See also

[Vacuum flask](https://en.wikipedia.org/wiki/Vacuum_flask) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Tumbler") +
  theme_tumbler(base_family = "sans", title_family = "sans")
```
