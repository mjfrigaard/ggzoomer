# Changelog

## ggzoomer 1.0.0

- The package is renamed from fmggp2 to ggzoomer. It no longer supports
  the book: `co_box()`, `status()`, `%nin%`, `theme_fmggp2()`, the
  Ubuntu font functions, and the bundled Ubuntu fonts move to the new
  fmutils package, and the 90s themes live in ggrewindr.
- Breaking: all 48 late 90s themes are removed, along with their images,
  tests, the bundled Press Start 2P font, and `gameboy_font()`. The book
  chapters that call them need updating.
- 37 new themes named after Gen Z aesthetics, trends, and objects:
  [`theme_airfryer()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_airfryer.md),
  [`theme_asmr()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_asmr.md),
  [`theme_axolotl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_axolotl.md),
  [`theme_boba()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_boba.md),
  [`theme_capybara()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_capybara.md),
  [`theme_cleangirl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_cleangirl.md),
  [`theme_coastal()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_coastal.md),
  [`theme_coquette()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_coquette.md),
  [`theme_cottagecore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_cottagecore.md),
  [`theme_darkacademia()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_darkacademia.md),
  [`theme_digicam()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_digicam.md),
  [`theme_doomscroll()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_doomscroll.md),
  [`theme_egirl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_egirl.md),
  [`theme_fidget()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_fidget.md),
  [`theme_frog()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_frog.md),
  [`theme_frutigeraero()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_frutigeraero.md),
  [`theme_goblincore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_goblincore.md),
  [`theme_gorpcore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_gorpcore.md),
  [`theme_groupchat()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_groupchat.md),
  [`theme_indiesleaze()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_indiesleaze.md),
  [`theme_kidcore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_kidcore.md),
  [`theme_ledstrip()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_ledstrip.md),
  [`theme_liminal()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_liminal.md),
  [`theme_livestream()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_livestream.md),
  [`theme_matcha()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_matcha.md),
  [`theme_mermaidcore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_mermaidcore.md),
  [`theme_photodump()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_photodump.md),
  [`theme_plushie()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_plushie.md),
  [`theme_slime()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_slime.md),
  [`theme_thrift()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_thrift.md),
  [`theme_tumbler()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_tumbler.md),
  [`theme_unboxing()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_unboxing.md),
  [`theme_vaporwave()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_vaporwave.md),
  [`theme_vinyl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_vinyl.md),
  [`theme_voicenote()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_voicenote.md),
  [`theme_weirdcore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_weirdcore.md),
  and
  [`theme_wiredbuds()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_wiredbuds.md).
- Each palette follows how the topic looks to Gen Z online (for example,
  [`theme_cleangirl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_cleangirl.md)
  uses gold jewelry, an iced matcha latte, fluffy brows, dewy skin, and
  neutral clothing). Each theme links its Wikipedia article and shows a
  freely licensed image from it.
  [`theme_capybara()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_capybara.md)
  follows the “After Party” single cover that capybara memes pair with,
  not the animal,
  [`theme_airfryer()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_airfryer.md)
  follows the Crispi air fryer colors, and
  [`theme_asmr()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_asmr.md)
  follows the indigo, fairy light set behind Gibi ASMR’s videos.
  Palettes are then adjusted for contrast: text at least 4.5:1, titles
  at least 4.5:1, marks at least 1.5:1 against the panel, and marks at
  least 6 CIEDE2000 apart under normal vision, deuteranopia, and
  protanopia.
- Themes with a dark default have `mode = "light"`:
  [`theme_asmr()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_asmr.md),
  [`theme_darkacademia()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_darkacademia.md),
  [`theme_digicam()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_digicam.md),
  [`theme_doomscroll()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_doomscroll.md),
  [`theme_egirl()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_egirl.md),
  [`theme_goblincore()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_goblincore.md),
  [`theme_indiesleaze()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_indiesleaze.md),
  [`theme_ledstrip()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_ledstrip.md),
  and
  [`theme_livestream()`](https://mjfrigaard.github.io/ggzoomer/reference/theme_livestream.md).
- Each theme’s help page and vignette section explains why the topic is
  included and why it matters to Gen Z.
- The themes vignette shows every theme with its image, credit, and
  simulated data.
