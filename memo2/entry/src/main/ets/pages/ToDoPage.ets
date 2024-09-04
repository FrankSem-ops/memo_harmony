import { ToDoMain } from '../view/ToDoMain'

@Entry
@Component
struct ToDoPage {
  build() {
    Column(){
      ToDoMain()
    }
  }
}