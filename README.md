# Design Pattern 设计模式

#### 设计模式总结

##### 创建型模式

- 简单工厂模式（Simple Factory）:

工厂方法从顶层看是通过[特殊的工厂方法]创建对象来替代直接通过调用new运算符创建，底层实质还是通过new运算符创建，只是将这部分放在底层罢了。
这些工厂生产出来的产品必须要有共同的基类或者接口。也即是说工厂方法并不是能够返回任意对象，而是一类具有同一特征的产品。
![](./images/factory-pattern_01.png)

所以使用工厂模式后大体的结构如下所示：
![](./images/factory-pattern_02.png)

它的好处是图上的那些Transport结点，不再是单一的运输工具，而是可以随意更换的实体结点。我们可以在上层很容易做到对这些结点的更换。


- 工厂方法模式（Factory Method）:
- 抽象工厂模式（Abstract Factory）:
- 创建者模式（Builder）:
- 原型模式（Prototype）:
- 单例模式（Singleton）:

##### 结构型模式

- 外观模式（Facade）:
- 适配器模式（Adapter）:
- 代理模式（Proxy）:
- 装饰模式（Decorator）:
- 桥模式（Bridge）:
- 组合模式（Composite）:
- 享元模式（Flyweight）:

##### 行为型模式

- 模板方法模式（Template Method）:
- 观察者模式（Observer）:
- 状态模式（State）:
- 策略模式（Strategy）:
- 职责链模式（Chain of Responsibility）:
- 命令模式（Command）:
- 访问者模式（Visitor）:
- 调停者模式（Mediator）:
- 备忘录模式（Memento）:
- 迭代器模式（Iterator）:
- 解释器模式（Interpreter）:

##### 前端常见架构模式

#### 以往的总结内容

- [Android进阶之设计模式](http://tbfungeek.github.io/tags/Android-%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F/)
- [iOS-Design-Pattern](https://github.com/tbfungeek/iOS-Design-Pattern)
- [DesignPattern](https://github.com/tbfungeek/DesignPattern)

#### 推荐书籍：
- [深入设计模式](https://refactoringguru.cn/design-patterns/book)
- [研磨设计模式](https://book.douban.com/subject/5343318/)
- [设计模式之禅](https://book.douban.com/subject/25843319/)
- [Head First 设计模式](https://book.douban.com/subject/2243615/)
- [设计模式-可复用面向对象软件的基础](https://book.douban.com/subject/1052241/)
- [大话设计模式](https://book.douban.com/subject/2334288/)
