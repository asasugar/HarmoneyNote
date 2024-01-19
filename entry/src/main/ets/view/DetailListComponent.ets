import type { ListItemData } from '../common/bean/ListItemData';
import { CommonConstants } from '../common/constants/CommonConstants';
import BusinessViewModel from '../viewmodel/BusinessViewModel';

/**
 * Detail page list component.
 */
@Component
export struct DetailListComponent {
  build() {
    Column() {
      List() {
        ForEach(BusinessViewModel.getDetailPageListItems(), (item: ListItemData) => {
          ListItem() {
            Row() {
              Text(item.title)
                .fontSize($r('app.float.detail_title_size'))
                .fontColor($r('app.color.detail_list_title'))
              Blank()
              Text(item.subTitle)
                .fontSize($r('app.float.detail_summary_size'))
                .fontColor($r('app.color.detail_list_summary'))
            }
            .width(CommonConstants.ROW_WIDTH_PERCENT)
            .height($r('app.float.detail_list_item_height'))
          }
        }, (item, index) => index + JSON.stringify(item));
      }
      .width(CommonConstants.LIST_WIDTH_PERCENT)
      .divider({
        strokeWidth: $r('app.float.list_divider_width'),
        color: $r('app.color.divider')
      })
    }
    .padding({
      top: $r('app.float.list_padding_top'),
      bottom: $r('app.float.list_padding_bottom'),
      left: $r('app.float.column_margin_left'),
      right: $r('app.float.column_margin_right')
    })
    .margin({ top: $r('app.float.list_margin_top') })
    .backgroundColor($r('app.color.start_window_background'))
    .borderRadius($r('app.float.detail_list_radius'))
  }
}