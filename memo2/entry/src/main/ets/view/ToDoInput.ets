import { TodoModel } from '../model/ToDoModel'
import { promptAction } from '@kit.ArkUI'

@Component
export struct TodoInput {
  @State newFlag: string = ''
  @Link todoList: TodoModel[]
  build() {
    Row() {
      TextInput({ placeholder: '请输入新任务', text: $$this.newFlag })
        .width('90%')
        .onSubmit(() => {
          if (this.newFlag) {
            this.todoList.push({
              text: this.newFlag,
              finished: false // 新增加的新年目标，默认情况就该是未完成状态
            })

            this.newFlag = '' // 情况输入框

          } else {
            promptAction.showToast({ message: '输入内容不能为空' })
          }
        })
    }
    .width('100%')
    .height(80)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)
  }
}
