const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#941E24", /* red     */
  [2] = "#AE0D26", /* green   */
  [3] = "#CF0D28", /* yellow  */
  [4] = "#B14437", /* blue    */
  [5] = "#CC5A47", /* magenta */
  [6] = "#DE9A6F", /* cyan    */
  [7] = "#bdb1c7", /* white   */

  /* 8 bright colors */
  [8]  = "#847b8b",  /* black   */
  [9]  = "#941E24",  /* red     */
  [10] = "#AE0D26", /* green   */
  [11] = "#CF0D28", /* yellow  */
  [12] = "#B14437", /* blue    */
  [13] = "#CC5A47", /* magenta */
  [14] = "#DE9A6F", /* cyan    */
  [15] = "#bdb1c7", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#bdb1c7", /* foreground */
  [258] = "#bdb1c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
