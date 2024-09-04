import { TodoModel } from '../model/ToDoModel'

@Component
export struct TodoHeader {
  // 声明一个变量记录已完成数量，将来用
  @State finishedCount: number = 0
  // 父传递数组进来，数组长度即为目标总数
  @Prop @Watch('getFinished') todoList: TodoModel[] = []
  getFinished() {
    let total = 0
    for (let i = 0; i < this.todoList.length; i++) {
      if (this.todoList[i].finished) {
        total++
      }
    }

    this.finishedCount = total
  }
  build() {
    Row() {
      Text('当前任务列表')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({ right: 20 })
        .fontColor('#4876FF')
      Stack() {
        Progress({ value: this.finishedCount, total: this.todoList.length, type: ProgressType.Ring })
          .width(80)
          .height(80)
        Text(`${this.finishedCount} / ${this.todoList.length}`)
          .fontColor('#4876FF')
      }

    }
    .width('100%')
    .height(110)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
  }
}
