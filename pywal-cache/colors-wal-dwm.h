static const char norm_fg[] = "#e1ccd1";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#9d8e92";

static const char sel_fg[] = "#e1ccd1";
static const char sel_bg[] = "#B1424E";
static const char sel_border[] = "#e1ccd1";

static const char urg_fg[] = "#e1ccd1";
static const char urg_bg[] = "#A5292E";
static const char urg_border[] = "#A5292E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
