const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#9F7B7D", /* red     */
  [2] = "#C94F41", /* green   */
  [3] = "#927691", /* yellow  */
  [4] = "#BE5EA0", /* blue    */
  [5] = "#AC91A6", /* magenta */
  [6] = "#DBA7A7", /* cyan    */
  [7] = "#dacde0", /* white   */

  /* 8 bright colors */
  [8]  = "#988f9c",  /* black   */
  [9]  = "#9F7B7D",  /* red     */
  [10] = "#C94F41", /* green   */
  [11] = "#927691", /* yellow  */
  [12] = "#BE5EA0", /* blue    */
  [13] = "#AC91A6", /* magenta */
  [14] = "#DBA7A7", /* cyan    */
  [15] = "#dacde0", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#dacde0", /* foreground */
  [258] = "#dacde0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
