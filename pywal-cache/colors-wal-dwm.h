static const char norm_fg[] = "#e4eadf";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#9fa39c";

static const char sel_fg[] = "#e4eadf";
static const char sel_bg[] = "#75C55C";
static const char sel_border[] = "#e4eadf";

static const char urg_fg[] = "#e4eadf";
static const char urg_bg[] = "#57AB4F";
static const char urg_border[] = "#57AB4F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
