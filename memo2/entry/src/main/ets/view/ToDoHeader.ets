@Component
export struct TodoHeader {
  build() {
    Row() {
      Text('今年目标')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ right: 20 })


      Stack() {
        Progress({ value: 0, total: 10, type: ProgressType.Ring })
          .width(80)
          .height(80)
        Text(`0 / 10`)
      }
    }
    .width('100%')
    .height(110)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
  }
}
