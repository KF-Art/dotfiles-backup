static const char norm_fg[] = "#e9d6d3";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#a39593";

static const char sel_fg[] = "#e9d6d3";
static const char sel_bg[] = "#BE4A4C";
static const char sel_border[] = "#e9d6d3";

static const char urg_fg[] = "#e9d6d3";
static const char urg_bg[] = "#AE3134";
static const char urg_border[] = "#AE3134";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
