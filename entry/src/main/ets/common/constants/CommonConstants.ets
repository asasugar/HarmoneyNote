/**
 * Common constants for all features.
 */
export class CommonConstants {
  /**
   * Tab size in page.
   */
  static readonly TAB_SIZE: number = 4;

  /**
   * Tab weight of page.
   */
  static readonly TABS_WEIGHT: number = 1;

  /**
   * List size of detail page.
   */
  static readonly DETAIL_LIST_SIZE: number = 2;

  /**
   * Title param in routing.
   */
  static readonly ROUTER_PARAMS_TITLE: string = 'title';

  /**
   * Url param in routing.
   */
  static readonly DETAIL_ROUTER_URL: string = 'pages/DetailPage';

  /**
   * Detail page width.
   */
  static readonly DETAIL_PAGE_WIDTH_PERCENT: string = '100%';

  /**
   * Detail page height.
   */
  static readonly DETAIL_PAGE_HEIGHT_PERCENT: string = '100%';

  /**
   * Card content border radius.
   */
  static readonly BORDER_RADIUS: number = 24;

  /**
   * Rect radius value.
   */
  static readonly RECT_RADIUS_VALUE: Array<Array<string>> = [['24vp', '24vp'], ['24vp', '24vp']];

  /**
   * The title font weight.
   */
  static readonly TITLE_FONT_WEIGHT: number = 500;

  /**
   * List title font weight.
   */
  static readonly CARD_ITEM_FONT_WEIGHT: number = 500;

  /**
   * Repeat times of list item.
   */
  static readonly REPEAT_TIMES: number = 3;

  /**
   * Breakpoint xs.
   */
  static readonly BREAK_POINT_XS: string = 'xs';

  /**
   * Breakpoint sm.
   */
  static readonly BREAK_POINT_SM: string = 'sm';

  /**
   * Breakpoint md.
   */
  static readonly BREAK_POINT_MD: string = 'md';

  /**
   * Breakpoint lg.
   */
  static readonly BREAK_POINT_LG: string = 'lg';

  /**
   * The break point value.
   */
  static readonly BREAK_POINTS_VALUE: Array<string> = ['320vp', '600vp', '840vp'];

  /**
   * Media query max height.
   */
  static readonly MEDIA_MAX_HEIGHT: string = '360vp';

  /**
   * The number of columns for SM device.
   */
  static readonly COLUMN_SM: number = 4;

  /**
   * The number of columns for MD device.
   */
  static readonly COLUMN_MD: number = 8;

  /**
   * The number of columns for LG device.
   */
  static readonly COLUMN_LG: number = 12;

  /**
   * The number of gutter x for device.
   */
  static readonly GUTTER_X: number = vp2px(24);

  /**
   * The number of span for SM device.
   */
  static readonly SPAN_SM: number = 4;

  /**
   * The number of span for MD device.
   */
  static readonly SPAN_MD: number = 8;

  /**
   * The number of span for MD device on the details page.
   */
  static readonly DETAIL_SPAN_MD: number = 6;

  /**
   * The number of span in stack component for MD device.
   */
  static readonly SPAN_MD_MEDIA_STACK: number = 3;

  /**
   * The number of span in list component for MD device.
   */
  static readonly SPAN_MD_MEDIA_LIST: number = 5;

  /**
   * The number of span for LG device.
   */
  static readonly SPAN_LG: number = 8;

  /**
   * The number of offset in stack component for MD device.
   */
  static readonly OFFSET_LG_STACK: number = 2;

  /**
   * The number of offset in list component for MD device.
   */
  static readonly OFFSET_MD_LIST: number = 4;

  /**
   * The number of offset for MD device on the details page.
   */
  static readonly DETAIL_OFFSET_MD: number = 1;

  /**
   * The number of offset for LG device on the details page.
   */
  static readonly DETAIL_OFFSET_LG: number = 2;

  /**
   * Full width percent.
   */
  static readonly FULL_WIDTH_PERCENT: string = '100%';

  /**
   * Widget height of list item.
   */
  static readonly WIDGET_HEIGHT_PERCENT: string = '100%';

  /**
   * Card content scroll width.
   */
  static readonly SCROLL_WIDTH_PERCENT: string = '100%';

  /**
   * Card content scroll height.
   */
  static readonly SCROLL_HEIGHT_PERCENT: string = '100%';

  /**
   * Card content rect width.
   */
  static readonly RECT_WIDTH_PERCENT: string = '100%';

  /**
   * List item row width.
   */
  static readonly ROW_WIDTH_PERCENT: string = '100%';

  /**
   * Tab bar width.
   */
  static readonly TAB_BAR_WIDTH_PERCENT: string = '100%';

  /**
   * List width.
   */
  static readonly LIST_WIDTH_PERCENT: string = '100%';

  /**
   * List height.
   */
  static readonly LIST_HEIGHT_PERCENT: string = '100%';

  /**
   * Tab bar height.
   */
  static readonly TAB_BAR_HEIGHT_PERCENT: string = '100%';

  /**
   * Tab height.
   */
  static readonly TAB_HEIGHT_PERCENT: string = '50%';
}