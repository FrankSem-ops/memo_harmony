@Component
export struct TodoInput {
  @State newFlag: string = ''

  build() {

    Row() {
      TextInput({ placeholder: '请输入新目标', text: $$this.newFlag })
        .width('90%')
    }
    .width('100%')
    .height(80)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)
  }
}
