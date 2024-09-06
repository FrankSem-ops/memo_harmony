@Entry
@Component
struct RelativeContainerUi {
  build() {
    RelativeContainer() {
      Text("遥遥领先")
        .fontSize(15)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "__container__", align: VerticalAlign.Top },
          left: { anchor: "__container__", align: HorizontalAlign.Start }
        })
        .id("one_txt")
        .width(150)
        .height(50)
        .textAlign(TextAlign.Center)
        .borderRadius('50%')
        .padding(10)
        .backgroundColor('rgba(255, 255, 0, 0.2)')

      Text("娜娜在右边")
        .fontSize(15)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "one_txt", align: VerticalAlign.Top },
          left: { anchor: "one_txt", align: HorizontalAlign.End }
        })
        .id("two_txt")
        .width(150)
        .padding(10)
        .height(50)
        .margin({ left: 20 ,top:20})
        .borderRadius('50%')
        .textAlign(TextAlign.Center)
        .backgroundColor('rgba(0, 255, 255, 0.2)')
      Text("琪琪落后")
        .fontSize(15)
        .fontColor(Color.White)
        .alignRules({
          top: { anchor: "two_txt", align: VerticalAlign.Bottom },
          left: { anchor: "one_txt", align: HorizontalAlign.End }
        })
        .id("three_txt")
        .width(150)
        .margin({ top: 60 })
        .height(50)
        .padding(10)
        .borderRadius('50%')
        .textAlign(TextAlign.Center)
        .backgroundColor('rgba(0, 255, 0, 0.2)')

    }.width("100%").height("100%")
    .padding({ left:30, top:70 })
    .backgroundColor('#4682b4')
  }
}