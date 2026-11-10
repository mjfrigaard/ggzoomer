# Voice note theme

Voice notes are short recorded messages sent in a chat instead of
typing. The palette follows the article's pink message slips and
voicemail light, with record red, mic gray, call green, waveform violet,
and amber.

## Usage

``` r
theme_voicenote(
  base_size = 15,
  base_family = register_font("Arial", "Arial.ttf", "Arial Bold.ttf"),
  title_family = register_font("Trebuchet MS", "Trebuchet MS Bold.ttf")
)
```

## Arguments

- base_size:

  Base font size. Defaults to `15`.

- base_family:

  Base font family. Defaults to Arial when it's available on the system,
  otherwise `"sans"`.

- title_family:

  Title font family. Defaults to Trebuchet MS when it's available,
  otherwise `"sans"`.

## Value

A `ggplot2` theme object.

## See also

[Voicemail](https://en.wikipedia.org/wiki/Voicemail) on Wikipedia.

## Examples

``` r
library(ggplot2)
ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
  geom_bar() +
  labs(title = "Voice note") +
  theme_voicenote(base_family = "sans", title_family = "sans")
```
