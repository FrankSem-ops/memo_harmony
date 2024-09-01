@Entry
@Component
export struct TextInputUi {
  build() {
    Row() {
      TextInput({ placeholder: '请输入密码' })
        .width('90%')
        .height(40)
        .margin(20)
        .type(InputType.Password)
        .maxLength(9)
        .showPasswordIcon(true)
    }.width('100%')
    .height('100%')
  }
}
