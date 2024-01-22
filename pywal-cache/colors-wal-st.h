const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#AE0E29", /* red     */
  [2] = "#B82132", /* green   */
  [3] = "#CF0C2C", /* yellow  */
  [4] = "#F50531", /* blue    */
  [5] = "#F30C32", /* magenta */
  [6] = "#D12336", /* cyan    */
  [7] = "#0C0813", /* white   */

  /* 8 bright colors */
  [8]  = "#931d27",  /* black   */
  [9]  = "#AE0E29",  /* red     */
  [10] = "#B82132", /* green   */
  [11] = "#CF0C2C", /* yellow  */
  [12] = "#F50531", /* blue    */
  [13] = "#F30C32", /* magenta */
  [14] = "#D12336", /* cyan    */
  [15] = "#0C0813", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#0C0813", /* foreground */
  [258] = "#0C0813",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
