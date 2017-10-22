#  知识点
## `No such module AFNetworking`
由于在pod文件中，没有加
`platform: ios, '8.0'`
`use_frameworks`
导致出错，加上上面内容，然后运行`pod update`；

