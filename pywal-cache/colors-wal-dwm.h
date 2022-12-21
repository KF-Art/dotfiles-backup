static const char norm_fg[] = "#cdd3db";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#8f9399";

static const char sel_fg[] = "#cdd3db";
static const char sel_bg[] = "#BC494F";
static const char sel_border[] = "#cdd3db";

static const char urg_fg[] = "#cdd3db";
static const char urg_bg[] = "#9A232E";
static const char urg_border[] = "#9A232E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
