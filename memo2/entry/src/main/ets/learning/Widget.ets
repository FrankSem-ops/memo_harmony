@Entry
@Component
struct Widget {
  build() {
    RelativeContainer() {
      Text("控件1")
        .fontSize(32)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "__container__", align: VerticalAlign.Top },
          left: { anchor: "__container__", align: HorizontalAlign.Start }
        })
        .id("one_txt")
        .width(150)
        .height(50)
        .textAlign(TextAlign.Center)
        .backgroundColor(Color.Brown)

      Text("控件2")
        .fontSize(32)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "one_txt", align: VerticalAlign.Top },
          left: { anchor: "one_txt", align: HorizontalAlign.End }
        })
        .id("two_txt")
        .width(150)
        .height(50)
        .textAlign(TextAlign.Center)
        .backgroundColor(Color.Gray)
      Text("控件3")
        .fontSize(32)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "two_txt", align: VerticalAlign.Bottom },
          left: { anchor: "one_txt", align: HorizontalAlign.End }
        })
        .id("three_txt")
        .width(150)
        .height(50)
        .textAlign(TextAlign.Center)
        .backgroundColor('#6495ed')
    }.width("100%")
    .height("100%")
    .backgroundColor('#4682b4')
  }
}

