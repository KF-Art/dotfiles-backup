const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#94152B", /* red     */
  [2] = "#D53C4B", /* green   */
  [3] = "#A45F63", /* yellow  */
  [4] = "#B57389", /* blue    */
  [5] = "#AD9DA2", /* magenta */
  [6] = "#E1A59E", /* cyan    */
  [7] = "#f3dbd4", /* white   */

  /* 8 bright colors */
  [8]  = "#aa9994",  /* black   */
  [9]  = "#94152B",  /* red     */
  [10] = "#D53C4B", /* green   */
  [11] = "#A45F63", /* yellow  */
  [12] = "#B57389", /* blue    */
  [13] = "#AD9DA2", /* magenta */
  [14] = "#E1A59E", /* cyan    */
  [15] = "#f3dbd4", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#f3dbd4", /* foreground */
  [258] = "#f3dbd4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
