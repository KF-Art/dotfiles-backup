static const char norm_fg[] = "#0C0813";
static const char norm_bg[] = "#000000";
static const char norm_border[] = "#931d27";

static const char sel_fg[] = "#0C0813";
static const char sel_bg[] = "#B82132";
static const char sel_border[] = "#0C0813";

static const char urg_fg[] = "#0C0813";
static const char urg_bg[] = "#AE0E29";
static const char urg_border[] = "#AE0E29";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
