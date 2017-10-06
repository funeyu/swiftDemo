#  简介
页面间跳转返回

## 知识点
+ 由代码`ArticleViewController.swift`运行结果可知,

``` swift
import UIKit

class ArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fullSize = UIScreen.main.bounds.size

        self.view.backgroundColor = UIColor.white

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: fullSize.width * 0.5, height: 40))
        label.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.08)
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        label.text = "文章列表页"
        self.view.addSubview(label)

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        button.setTitle("退出", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
        button.addTarget(self, action: #selector(self.goBack), for: .touchUpInside)
        self.view.addSubview(button)

        print("viewDidLoad")
    }

    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}
```
`viewDidLoad`,`viewWillAppear`,`viewDidAppear`三个的执行顺序：
`viewDidLoad`---->`viewWillAppear` ----> `viewDidAppear`
