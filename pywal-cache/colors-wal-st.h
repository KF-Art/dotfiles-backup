const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#57AB4F", /* red     */
  [2] = "#75C55C", /* green   */
  [3] = "#88BD6B", /* yellow  */
  [4] = "#8DCB6A", /* blue    */
  [5] = "#76AD88", /* magenta */
  [6] = "#B5D69A", /* cyan    */
  [7] = "#e4eadf", /* white   */

  /* 8 bright colors */
  [8]  = "#9fa39c",  /* black   */
  [9]  = "#57AB4F",  /* red     */
  [10] = "#75C55C", /* green   */
  [11] = "#88BD6B", /* yellow  */
  [12] = "#8DCB6A", /* blue    */
  [13] = "#76AD88", /* magenta */
  [14] = "#B5D69A", /* cyan    */
  [15] = "#e4eadf", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#e4eadf", /* foreground */
  [258] = "#e4eadf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
