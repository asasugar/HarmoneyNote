import { TabItemData } from '../common/bean/TabItemData';
import { ListItemData } from '../common/bean/ListItemData';
import { CommonConstants } from '../common/constants/CommonConstants';
import { WidgetType } from '../common/bean/WidgetType';

/**
 * BusinessCard ability view model.
 */
class BusinessViewModel {
  /**
   * Get list items.
   *
   * @return {Array<ListItemData>} listItems.
   */
  getListItems(): Array<ListItemData> {
    let widgets: Array<WidgetType> = [WidgetType.TOGGLE, WidgetType.INFO, WidgetType.TEXT, WidgetType.default];
    let listItems: Array<ListItemData> = [];
    for (let i = 0; i < widgets.length; i++) {
      for (let j = 0; j < CommonConstants.REPEAT_TIMES; j++) {
        let cardItem = new ListItemData();
        cardItem.title = $r('app.string.list_item_title');
        cardItem.subTitle = $r('app.string.list_item_sub_title');
        cardItem.widget = widgets[i];
        listItems.push(cardItem);
      }
    }
    return listItems;
  }

  /**
   * Get tab items of businessCard page.
   *
   * @return {Array<TabItemData>} tabItems.
   */
  getTabItems(): Array<TabItemData> {
    let tabItems: Array<TabItemData> = [];
    for (let i = 0; i < CommonConstants.TAB_SIZE; i++) {
      let tabItem = new TabItemData();
      tabItem.index = i;
      tabItem.imageOriginal = $r('app.media.ic_tab_normal');
      tabItem.imageActivated = $r('app.media.ic_tab_activated');
      tabItem.title = $r('app.string.tab_title');
      tabItems.push(tabItem);
    }
    return tabItems;
  }

  /**
   * Get detail page list items.
   *
   * @return {Array<ListItemData>} detailListItems.
   */
  getDetailPageListItems(): Array<ListItemData> {
    let detailListItems: Array<ListItemData> = [];
    for (let i = 0; i < CommonConstants.DETAIL_LIST_SIZE; i++) {
      let listItem = new ListItemData();
      listItem.title = $r('app.string.list_item_title');
      listItem.subTitle = $r('app.string.list_item_sub_title');
      detailListItems.push(listItem);
    }
    return detailListItems;
  }
}

let businessViewModel = new BusinessViewModel();

export default businessViewModel as BusinessViewModel;