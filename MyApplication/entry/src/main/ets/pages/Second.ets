// Second.ets
@Entry
@Component
struct Second {
  @State message: string[] = ['状态更新', '路由模式', '页面栈','stage 应用模型', 'UIAbility 组件']

  build() {
    Row() {
      Column() {
        ForEach(this.message, (item: string, index: number) => {
          Text(item)
            .backgroundColor(this.getColor(index))
            .padding({ top: 10, bottom: 10, left: 10, right: 10 })
            .align(Alignment.Center)
            .fontColor($r('sys.color.white'))
            .width('100%')
            .fontWeight(FontWeight.Bold)
        })
      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor('#4682b4')
  }

  getColor(index: number): string {
    const colors = ['#88ff0000', '#90ffa500', '#90ffff00', '#90008000', '#900000ff'];
    return colors[index % colors.length];
  }
}