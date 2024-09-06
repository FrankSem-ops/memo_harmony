@Entry
@Component
export struct StackUi {
  build() {
    Stack() {
      Text('item1')
        .fontSize(12)
        .fontColor('#fff')
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .height('100%')
        .backgroundColor('rgba(0, 0, 255, 0.2)')
        .textAlign(TextAlign.Start)
        .align(Alignment.Top)
        .padding(10)
        .zIndex(3)
      Text('item2')
        .fontSize(12)
        .fontColor('#fff')
        .fontWeight(FontWeight.Bold)
        .width('60%')
        .height('60%')
        .backgroundColor('rgba(0, 255, 0, 0.2)') 
        .textAlign(TextAlign.Start)
        .align(Alignment.Top)
        .zIndex(1)
      Text('item3')
        .fontSize(12)
        .fontColor('#fff')
        .fontWeight(FontWeight.Bold)
        .width('30%')
        .height('30%')
        .backgroundColor('rgba(255, 255, 0, 0.2)')
        .textAlign(TextAlign.Start)
        .align(Alignment.Top)
        .zIndex(2)
    }
    .alignContent(Alignment.BottomEnd)
    .width("100%")
    .height("40%")
    .backgroundColor('rgba(8, 8, 8, 0.2)')
  }
}
