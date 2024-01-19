import router from '@ohos.router';
import type { ListItemData } from '../common/bean/ListItemData';
import { WidgetType } from '../common/bean/WidgetType';
import { CommonConstants } from '../common/constants/CommonConstants';
import { CardItemComponent } from './CardItemComponent';
import BusinessViewModel from '../viewmodel/BusinessViewModel';
import MediaQueryModel from '../model/MediaQueryModel';

/**
 * Card content contains the information list.
 */
@Component
export struct CardContentComponent {
  @Link currentPoint: string;
  @StorageProp('isMinHeight') isMinHeight: boolean = false;

  aboutToAppear() {
    MediaQueryModel.register();
  }

  aboutToDisappear() {
    MediaQueryModel.unRegister();
  }

  build() {
    Scroll() {
      GridRow({
        breakpoints: {
          value: CommonConstants.BREAK_POINTS_VALUE,
          reference: BreakpointsReference.WindowSize
        },
        columns: {
          sm: CommonConstants.COLUMN_SM,
          md: CommonConstants.COLUMN_MD,
          lg: CommonConstants.COLUMN_LG
        },
        gutter: { x: CommonConstants.GUTTER_X },
        direction: GridRowDirection.Row
      }) {
        GridCol({
          span: {
            sm: CommonConstants.SPAN_SM,
            md: this.isMinHeight ? CommonConstants.SPAN_MD_MEDIA_STACK : CommonConstants.SPAN_MD,
            lg: CommonConstants.SPAN_LG
          },
          offset: { lg: CommonConstants.OFFSET_LG_STACK }
        }) {
          Stack({ alignContent: Alignment.Center }) {
            if (!this.isMinHeight) {
              Rect()
                .width(CommonConstants.RECT_WIDTH_PERCENT)
                .height($r('app.float.card_rect_height'))
                .margin({ top: $r('app.float.card_margin_top') })
                .fill($r('app.color.card_background'))
                .radius(CommonConstants.RECT_RADIUS_VALUE)
                .stroke($r('app.color.card_background'))
            }
            Column() {
              Image($r('app.media.ic_user'))
                .width($r('app.float.card_user_icon'))
                .height($r('app.float.card_user_icon'))
                .objectFit(ImageFit.Contain)
              Text($r('app.string.user_name'))
                .fontSize($r('app.float.card_user_name_size'))
                .margin({ top: $r('app.float.card_user_name_margin_top') })
            }
            .margin({
              top: this.isMinHeight ? $r('app.float.min_height_user_margin_top') : $r('app.float.user_icon_margin_top')
            })
          }
        }

        GridCol({
          span: {
            sm: CommonConstants.SPAN_SM,
            md: this.isMinHeight ? CommonConstants.SPAN_MD_MEDIA_LIST : CommonConstants.SPAN_MD,
            lg: CommonConstants.SPAN_LG
          },
          offset: { lg: CommonConstants.OFFSET_MD_LIST }
        }) {
          List() {
            ForEach(BusinessViewModel.getListItems(), (item: ListItemData) => {
              ListItem() {
                CardItemComponent({ cardItem: item })
              }
              .onClick(() => this.openDetailPage(item))
            }, (item, index) => index + JSON.stringify(item))
          }
          .width(CommonConstants.LIST_WIDTH_PERCENT)
          .hitTestBehavior(this.isMinHeight ? HitTestMode.Default : HitTestMode.None)
          .margin({ bottom: $r('app.float.title_height') })
          .divider({
            strokeWidth: $r('app.float.list_divider_width'),
            color: $r('app.color.divider'),
            startMargin: $r('app.float.card_divider_margin'),
            endMargin: $r('app.float.card_divider_margin')
          })
        }
        .backgroundColor($r('app.color.card_background'))
        .borderRadius({
          topLeft: this.isMinHeight ? CommonConstants.BORDER_RADIUS : 0,
          topRight: this.isMinHeight ? CommonConstants.BORDER_RADIUS : 0
        });
      }
      .margin({
        left: this.currentPoint === CommonConstants.BREAK_POINT_LG || this.isMinHeight ?
          $r('app.float.grid_row_margin_md') : $r('app.float.grid_row_margin'),
        right: this.currentPoint === CommonConstants.BREAK_POINT_LG || this.isMinHeight ?
          $r('app.float.grid_row_margin_md') : $r('app.float.grid_row_margin')
      })
      .onBreakpointChange((breakPoint) => {
        this.currentPoint = breakPoint;
      })
    }
    .scrollable(this.isMinHeight ? ScrollDirection.None : ScrollDirection.Vertical)
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)
    .width(CommonConstants.SCROLL_WIDTH_PERCENT)
    .height(CommonConstants.SCROLL_HEIGHT_PERCENT)
  }

  openDetailPage(item: ListItemData): void {
    if (item.widget !== WidgetType.TOGGLE) {
      router.pushUrl({
        url: CommonConstants.DETAIL_ROUTER_URL,
        params: {
          title: item.title
        }
      });
    }
  }
}