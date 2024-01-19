import { CommonConstants } from '../common/constants/CommonConstants';
import { WidgetType } from '../common/bean/WidgetType';
import { ListItemData } from '../common/bean/ListItemData';

/**
 * One row information of card content.
 */
@Component
export struct CardItemComponent {
  private cardItem: ListItemData;

  build() {
    Flex({
      direction: FlexDirection.Row,
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Center
    }) {
      Column() {
        Text(this.cardItem.title)
          .fontSize($r('app.float.card_content_title_size'))
          .fontColor($r('app.color.item_title'))
          .fontWeight(CommonConstants.CARD_ITEM_FONT_WEIGHT)
          .margin({
            left: $r('app.float.card_content_margin'),
            bottom: $r('app.float.card_content_title_margin')
          })
        Text(this.cardItem.subTitle)
          .fontSize($r('app.float.card_content_sub_title_size'))
          .fontColor($r('app.color.item_sub_title'))
          .margin({ left: $r('app.float.card_content_margin') })
      }
      .alignItems(HorizontalAlign.Start)

      WidgetComponent({
        widget: this.cardItem.widget
      })
    }
    .height($r('app.float.card_list_item_height'))
  }
}

@Component
struct WidgetComponent {
  private widget: WidgetType;

  build() {
    Row() {
      if (this.widget === WidgetType.TOGGLE) {
        Toggle({
          type: ToggleType.Switch,
          isOn: true
        })
          .size({
            width: $r('app.float.card_content_toggle'),
            height: $r('app.float.card_content_toggle')
          })
          .selectedColor($r('app.color.switch_on'))
          .margin({ right: $r('app.float.card_content_margin') })
      } else if (this.widget === WidgetType.INFO) {
        Image($r('app.media.ic_about'))
          .width($r('app.float.card_content_icon'))
          .height($r('app.float.card_content_icon'))
          .objectFit(ImageFit.Contain)
        Image($r('app.media.ic_about'))
          .width($r('app.float.card_content_icon'))
          .height($r('app.float.card_content_icon'))
          .objectFit(ImageFit.Contain)
          .margin({
            left: $r('app.float.card_content_icon_margin'),
            right: $r('app.float.card_content_margin')
          })
      } else if (this.widget === WidgetType.TEXT) {
        Text($r('app.string.list_item_summary'))
          .fontSize($r('app.float.card_right_text_size'))
          .fontColor($r('app.color.item_sub_title'))
          .margin($r('app.float.card_list_text_margin'))
        Image($r('app.media.ic_right_arrow'))
          .width($r('app.float.card_arrow_icon_width'))
          .height($r('app.float.card_arrow_icon_height'))
          .objectFit(ImageFit.Contain)
          .margin({ right: $r('app.float.card_content_margin') })
      } else {
        Blank()
      }
    }
    .height(CommonConstants.WIDGET_HEIGHT_PERCENT)
  }
}