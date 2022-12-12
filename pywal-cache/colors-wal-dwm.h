static const char norm_fg[] = "#bdb1c7";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#847b8b";

static const char sel_fg[] = "#bdb1c7";
static const char sel_bg[] = "#AE0D26";
static const char sel_border[] = "#bdb1c7";

static const char urg_fg[] = "#bdb1c7";
static const char urg_bg[] = "#941E24";
static const char urg_border[] = "#941E24";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
