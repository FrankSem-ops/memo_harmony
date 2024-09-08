// 导入页面路由模块
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  build() {
    Row() {
      // 添加按钮组件
      Button() {
        // 文本组件
        Text('开始学习HarmonyOS NEXT')
          .fontSize(22)
          .fontColor('#fff')
          .fontWeight(FontWeight.Bold)
      }
      // 跳转按钮绑定onClick事件，点击时跳转到第二页
      .onClick(() => {
        // 跳转到第二页
        router.pushUrl({ url: 'pages/ToDoPage' })
      })
      // 按钮组件的类型（默认是50%圆角的）
      .type(ButtonType.Normal)
      // 按钮的圆角级别
      .borderRadius('10%')
      .margin({
        top: 20
      })
      // 按钮的背景色
      .backgroundColor('#6495ed')
      .width('90%')
      .height('5%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#4682b4')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

