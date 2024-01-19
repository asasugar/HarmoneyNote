import type { WidgetType } from './WidgetType';

/**
 * List item data entity.
 */
export class ListItemData {
  /**
   * List item title.
   */
  title: Resource;

  /**
   * List item sub title.
   */
  subTitle: Resource;

  /**
   * List item widget type.
   */
  widget: WidgetType;
}