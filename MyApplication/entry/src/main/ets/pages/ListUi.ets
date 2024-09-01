@Entry
@Component
export struct ListUi {
  @State arr: string[] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"]

  build() {
    Column() {
      List({ space: 20, initialIndex: 0 }) {
        ForEach(this.arr, (item:string) => {
          ListItem() {
            Text('item ' + item)
              .width('100%')
              .height(100)
              .fontSize(16)
              .textAlign(TextAlign.Center)
              .borderRadius(10)
              .backgroundColor(0xFFFFFF)
          }
          .border({ width: 2, color: '#4682b4' })
        }, (item:string) => item)
      }
      .height("100%")
      .width("100%")
      .padding(20)
    }
  }
}
