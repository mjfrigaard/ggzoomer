# Air fryer theme

Air fryers are small countertop convection ovens that blow hot air
around food. Air fryers went from a novelty to a common kitchen
appliance in the 2020s. Philips launched the first Airfryer in 2010, and
by 2018 people used the name for any brand. About 36% of US households
had a convection oven in 2020. By 2023, an estimated 60% had one. In a
2024 UK study, one in five people said the air fryer was the cooking
device they used most.

## Usage

``` r
theme_airfryer(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Tahoma", "Tahoma Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Tahoma when it's available, otherwise
  `"sans"`.

## Value

A `ggplot2` theme object.

## Details

The palette follows the colors the popular Crispi air fryer comes in:
Cherry Crush, Sage Green, Electric Cobalt, Butter Yellow, Cyberspace
navy, and Frosted Lilac on Stone.

## See also

[Convection oven](https://en.wikipedia.org/wiki/Convection_oven) on
Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Air fryer") +
  theme_airfryer(base_family = "sans", title_family = "sans")
```
