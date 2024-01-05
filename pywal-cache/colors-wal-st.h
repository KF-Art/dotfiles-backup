const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#A5292E", /* red     */
  [2] = "#B1424E", /* green   */
  [3] = "#A55860", /* yellow  */
  [4] = "#D16061", /* blue    */
  [5] = "#986E8C", /* magenta */
  [6] = "#DEA6A5", /* cyan    */
  [7] = "#e1ccd1", /* white   */

  /* 8 bright colors */
  [8]  = "#9d8e92",  /* black   */
  [9]  = "#A5292E",  /* red     */
  [10] = "#B1424E", /* green   */
  [11] = "#A55860", /* yellow  */
  [12] = "#D16061", /* blue    */
  [13] = "#986E8C", /* magenta */
  [14] = "#DEA6A5", /* cyan    */
  [15] = "#e1ccd1", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#e1ccd1", /* foreground */
  [258] = "#e1ccd1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
