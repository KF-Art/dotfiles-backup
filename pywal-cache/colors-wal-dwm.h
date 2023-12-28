static const char norm_fg[] = "#dacde0";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#988f9c";

static const char sel_fg[] = "#dacde0";
static const char sel_bg[] = "#C94F41";
static const char sel_border[] = "#dacde0";

static const char urg_fg[] = "#dacde0";
static const char urg_bg[] = "#9F7B7D";
static const char urg_border[] = "#9F7B7D";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
