# Voice note theme

Voice notes are short recorded messages sent in a chat instead of
typing. Voice notes boomed during the pandemic and became Gen Z's
favorite way to keep in touch, partly because of phone call anxiety.
Preply found that 84% of Gen Z use them, compared with 47% of baby
boomers. Forty percent of users say a voice note can replace a call.
Still, 31% of Gen Z find incoming voice notes inconvenient, and many
long ones go unheard.

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

## Details

The palette follows a voice note bubble: WhatsApp green, iMessage blue,
waveform gray, record red, dark mode charcoal, and chat bubble green.

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
