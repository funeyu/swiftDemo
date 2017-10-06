#  简介：
主要利用`UISlider`去做图片的透明度控制

## 注意点
+ 获取`UIColor`的颜色不再是通过方法调用获取，而是通过属性获取，`UIColor.purple`不是`UIColor.purple()`
+ `#selector`的修饰符必须添加`@objc`
+ 给`slider`添加监听方法，可以通过:
``` swift
slider.addTarget(self, action: #selector(ViewController.onSliderChange),
for: UIControlEvents.valueChanged)
```
``` swift
slider.addTarget(self, action: #selector(self.onSliderChange),
    for: UIControlEvents.valueChanged)
```

