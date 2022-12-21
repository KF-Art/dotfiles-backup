const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#9A232E", /* red     */
  [2] = "#BC494F", /* green   */
  [3] = "#888187", /* yellow  */
  [4] = "#9F9B9F", /* blue    */
  [5] = "#D4A99B", /* magenta */
  [6] = "#F1CBB8", /* cyan    */
  [7] = "#cdd3db", /* white   */

  /* 8 bright colors */
  [8]  = "#8f9399",  /* black   */
  [9]  = "#9A232E",  /* red     */
  [10] = "#BC494F", /* green   */
  [11] = "#888187", /* yellow  */
  [12] = "#9F9B9F", /* blue    */
  [13] = "#D4A99B", /* magenta */
  [14] = "#F1CBB8", /* cyan    */
  [15] = "#cdd3db", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#cdd3db", /* foreground */
  [258] = "#cdd3db",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
