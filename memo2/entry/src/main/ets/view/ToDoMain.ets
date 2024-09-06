import { TodoItem } from './ToDoItem'
import { TodoHeader } from './ToDoHeader'
import { TodoModel } from '../model/ToDoModel'
import { TodoInput } from './ToDoInput'

@Component
export struct ToDoMain {
  @State name: string = 'abc'
  // @State todoList: number[] = [1, 2, 3, 4, 5, 6, 7]
  @State todoList: Array<TodoModel> = [
    { text: "学习harmony状态更新相关内容", finished: false },
    { text: "学习harmony自定义组件相关内容", finished: false },
    { text: "学习harmony组件化相关内容", finished: false },
    { text: "中彩票5个小目标", finished: false },
    { text: "买下汤臣一品（靠黄浦江那栋）", finished: false },
    { text: "收复台湾和小日子", finished: false },
    { text: "莫欺老年穷", finished: false },
  ];

  // @Link todoList: TodoModel[]
  build() {
      Column({ space: 10 }) {
        TodoHeader({ todoList: this.todoList })
        TodoInput({ todoList: this.todoList })
        List({ space: 10 }) {
          ForEach(this.todoList, (item: TodoModel, index: number) => {
            // 把TodoItem用ListItem包起来，因为List组件里只能放`ListItem`
            ListItem() {
              TodoItem({
                item, onChange: () => {
                  this.changeStatus(item, index)
                }
              })
            }
          })
        }.width('100%')
        .height(500)
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