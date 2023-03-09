const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f0f0f", /* black   */
  [1] = "#9A1420", /* red     */
  [2] = "#E61326", /* green   */
  [3] = "#EF3648", /* yellow  */
  [4] = "#BD4753", /* blue    */
  [5] = "#A39D9E", /* magenta */
  [6] = "#D0B7BB", /* cyan    */
  [7] = "#e6e0e1", /* white   */

  /* 8 bright colors */
  [8]  = "#a19c9d",  /* black   */
  [9]  = "#9A1420",  /* red     */
  [10] = "#E61326", /* green   */
  [11] = "#EF3648", /* yellow  */
  [12] = "#BD4753", /* blue    */
  [13] = "#A39D9E", /* magenta */
  [14] = "#D0B7BB", /* cyan    */
  [15] = "#e6e0e1", /* white   */

  /* special colors */
  [256] = "#0f0f0f", /* background */
  [257] = "#e6e0e1", /* foreground */
  [258] = "#e6e0e1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
