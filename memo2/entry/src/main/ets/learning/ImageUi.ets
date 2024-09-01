@Entry
@Component
export struct ImageUi {
  build() {
    Column() {
      Image($r('app.media.harmony_test')).width('30%').width('100%')
      Text("本地图片").width("100%").textAlign(TextAlign.Center).fontSize(22).fontColor(Color.Black).margin({top:20})

      Image("https://img1.baidu.com/it/u=4091031159,3987317755&fm=253&fmt=auto&app=120&f=JPEG?w=888&h=500").width('30%').width('100%').margin({top:40})
      Text("网络图片").width("100%").textAlign(TextAlign.Center).fontSize(22).fontColor(Color.Black).margin({top:20})
    }.width('100%')
    .height('100%')
  }
}
