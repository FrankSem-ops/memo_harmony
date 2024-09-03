import { TodoItem } from '../view/ToDoItem'
import { TodoHeader } from '../view/ToDoHeader'
import { TodoModel } from '../model/ToDoModel'

@Entry
@Component
struct ToDoPage {
  @State name: string = 'abc'
  @State todoList: number[] = [1, 2, 3, 4, 5, 6, 7]
  @State totalFlags: Array<TodoModel> = [
    { text: "月入5万", finished: false },
    { text: "中彩票500万", finished: false },
    { text: "找个富婆", finished: false },
    { text: "买套别墅", finished: false },
    { text: "改掉爱做梦的习惯", finished: false },
  ];
  build() {
    Column({ space: 10 }) {
      TodoHeader()
      ForEach(this.totalFlags, (item: TodoModel) => {
        // 这里是传参，把父的name传递给了子里的name
        TodoItem({ name: item.text})
      })
    }
    .width('100%')
  }


}