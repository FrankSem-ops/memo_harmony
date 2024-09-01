// 定义一个 Person 类
class Person {
  name: string;
  age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  getDetails(): string {
    return `${this.name} is ${this.age} years old.`;
  }
}

// 创建 Person 对象数组
const people: Person[] = [
  new Person("Alice", 30),
  new Person("Bob", 25),
  new Person("Charlie", 35)
];

// 遍历对象数组并输出每个对象的详情
people.forEach(person => {
  console.log(person.getDetails());
});
