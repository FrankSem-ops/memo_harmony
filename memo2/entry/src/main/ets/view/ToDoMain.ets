import { TodoItem } from './ToDoItem'
import { TodoHeader } from './ToDoHeader'
import { TodoModel } from '../model/ToDoModel'
import { TodoInput } from './ToDoInput'

@Component
export struct ToDoMain {
  @State name: string = 'abc'
  // @State todoList: number[] = [1, 2, 3, 4, 5, 6, 7]
  @State todoList: Array<TodoModel> = [
    { text: "月入5万", finished: false },
    { text: "中彩票500万", finished: false },
    { text: "找个富婆", finished: false },
    { text: "买套别墅", finished: false },
    { text: "改掉爱做梦的习惯", finished: false },
  ];
  // @Link todoList: TodoModel[]
  build() {
    Column({ space: 10 }) {
      TodoHeader({ todoList: this.todoList })
      TodoInput()
      ForEach(this.todoList, (item: TodoModel, index: number) => {
        // 此时调用TodoItem
        TodoItem({
          item, onChange: () => {
            this.changeStatus(item, index)
          }
        })
      })

    }
    .width('100%')
  }

  changeStatus(item: TodoModel, index: number) {
    this.todoList[index] = {
      text: item.text,
      finished: !item.finished
    }
  }


}