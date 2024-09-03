
import { TodoModel } from '../model/ToDoModel'
@Component
export struct TodoItem {
  name: string = ''

  build() {
    Row() {
      Checkbox()
        // .select(this.item.finished) // 本次代码
        .margin({ left: 20, right: 20 })
      Text(this.name) // 本次代码
    }
    .width('100%')
    .height(40)
    .backgroundColor(Color.White)
    .borderRadius(20)
  }
}
