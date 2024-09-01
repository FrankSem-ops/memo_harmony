@Entry
@Component
export struct GridUi {
  @State arr: string[] =
    ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"]

  build() {
    Grid() {
      ForEach(this.arr, (day: string) => {
        GridItem() {
          Text("item" + day)
            .fontSize(16)
            .backgroundColor('#4682b4')
            .width('22%')
            .fontColor(Color.White)
            .height(100)
            .textAlign(TextAlign.Center)
        }.padding(4)
      }, (day: string) => day)
    }

    .width('100%')
    .backgroundColor(Color.White)
    .height('100%')
  }
}
