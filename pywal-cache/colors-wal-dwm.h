static const char norm_fg[] = "#f3dbd4";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#aa9994";

static const char sel_fg[] = "#f3dbd4";
static const char sel_bg[] = "#D53C4B";
static const char sel_border[] = "#f3dbd4";

static const char urg_fg[] = "#f3dbd4";
static const char urg_bg[] = "#94152B";
static const char urg_border[] = "#94152B";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
