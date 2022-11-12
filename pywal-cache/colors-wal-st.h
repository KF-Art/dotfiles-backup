const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#AE3134", /* red     */
  [2] = "#BE4A4C", /* green   */
  [3] = "#AF5858", /* yellow  */
  [4] = "#D3585D", /* blue    */
  [5] = "#CE7C87", /* magenta */
  [6] = "#DFA99E", /* cyan    */
  [7] = "#e9d6d3", /* white   */

  /* 8 bright colors */
  [8]  = "#a39593",  /* black   */
  [9]  = "#AE3134",  /* red     */
  [10] = "#BE4A4C", /* green   */
  [11] = "#AF5858", /* yellow  */
  [12] = "#D3585D", /* blue    */
  [13] = "#CE7C87", /* magenta */
  [14] = "#DFA99E", /* cyan    */
  [15] = "#e9d6d3", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#e9d6d3", /* foreground */
  [258] = "#e9d6d3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
