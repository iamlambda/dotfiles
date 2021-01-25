static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static const unsigned int border_width = 4;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"SauceCodePro Nerd Font Mono:size=15",
	"JoyPixels:pixelsize=10:antialias=true:autohint=true"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#ffffff", "#0F1215" },
	[SchemeSel] = { "#ffffff", "#6699cc" },
	[SchemeOut] = { "#000000", "#00ffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 10;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
