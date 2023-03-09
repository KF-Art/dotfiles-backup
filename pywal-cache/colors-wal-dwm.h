static const char norm_fg[] = "#e6e0e1";
static const char norm_bg[] = "#0f0f0f";
static const char norm_border[] = "#a19c9d";

static const char sel_fg[] = "#e6e0e1";
static const char sel_bg[] = "#E61326";
static const char sel_border[] = "#e6e0e1";

static const char urg_fg[] = "#e6e0e1";
static const char urg_bg[] = "#9A1420";
static const char urg_border[] = "#9A1420";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
