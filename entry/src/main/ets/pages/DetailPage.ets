import router from '@ohos.router';
import { CommonConstants } from '../common/constants/CommonConstants';
import { DetailListComponent } from '../view/DetailListComponent';

/**
 * Detail page entry. Click on the businessCard page to route to the detail page.
 */
@Entry
@Component
struct DetailPage {
  @State currentPoint: string = CommonConstants.BREAK_POINT_XS;
  private title: Resource = $r('app.string.detail_default_title');

  aboutToAppear() {
    if (router.getParams()) {
      this.title = router.getParams()[CommonConstants.ROUTER_PARAMS_TITLE] as Resource;
    }
  }

  build() {
    Column() {
      this.Title()

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
            md: CommonConstants.DETAIL_SPAN_MD,
            lg: CommonConstants.SPAN_LG
          },
          offset: {
            md: CommonConstants.DETAIL_OFFSET_MD,
            lg: CommonConstants.DETAIL_OFFSET_LG
          }
        }) {
          DetailListComponent()
        }
      }
      .margin({
        left: $r('app.float.detail_grid_row_margin'),
        right: $r('app.float.detail_grid_row_margin')
      })
      .onBreakpointChange((breakPoint) => {
        this.currentPoint = breakPoint;
      })
    }
    .width(CommonConstants.DETAIL_PAGE_WIDTH_PERCENT)
    .height(CommonConstants.DETAIL_PAGE_HEIGHT_PERCENT)
    .backgroundColor($r('app.color.common_background'))
  }

  @Builder Title() {
    Row() {
      Image($r('app.media.ic_back'))
        .width($r('app.float.image_size'))
        .height($r('app.float.image_size'))
        .margin({
          left: $r('app.float.image_margin_left'),
          right: $r('app.float.image_margin_right')
        })
        .onClick(() => {
          router.back();
        })

      Text(this.title)
        .fontSize($r('app.float.tab_title_size'))
        .fontColor($r('app.color.title'))
        .fontWeight(CommonConstants.TITLE_FONT_WEIGHT)
    }
    .width(CommonConstants.FULL_WIDTH_PERCENT)
    .height($r('app.float.title_height'))
  }
}