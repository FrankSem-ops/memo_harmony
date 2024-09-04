
import { TodoModel } from '../model/ToDoModel'
@Component
export struct TodoItem {
  @Prop item: TodoModel = new TodoModel() // 本次代码

  build() {
    Row() {
      Checkbox()
        .select(this.item.finished) // 本次代码
        .margin({ left: 20, right: 20 })
        .onChange(() => {
          // 本次代码
          this.onChange()
        })
      Text(this.item.text)// 本次代码
        .opacity(this.item.finished ? 0.4 : 1)
        .decoration({ type: this.item.finished ? TextDecorationType.LineThrough : TextDecorationType.None })
    }
    .width('100%')
    .height(40)
    .backgroundColor(Color.White)
    .borderRadius(20)
  }
  onChange: () => void = () => {}
}
