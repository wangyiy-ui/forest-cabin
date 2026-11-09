# 林深见灯 · Forest Cabin

使用 Three.js 构建的低多边形森林小屋与玻璃球微缩景观。

## 运行

需要 Node.js。Windows 可双击 `启动森林小屋.bat`，或在项目目录运行：

```sh
node server.cjs
```

浏览器打开 http://127.0.0.1:4174/ 。关闭服务器窗口或按 Ctrl+C 停止。

Three.js 及控制、反射模块随项目提供，无需安装 npm 依赖，也无需在运行时访问 CDN。

## 交互

- 拖动视角，360° 环绕观察。
- 鼠标滚轮或触屏双指缩放；拉远后显示玻璃球及底座，靠近后观察内部景观。
- 切换白天、黄昏、夜晚，开关雾效和自动环绕。
- 玻璃球周围有动态光点、飘叶和弧形轨迹；近景时淡出。
- 场景包含小屋室内陈设、松林、湖面倒影、小船、野花、鸟屋、蝴蝶与炊烟。

## 文件

- `dist/index.html`：页面与控制面板。
- `dist/main.js`：场景、模型、灯光、动画及交互。
- `dist/three.module.js`：Three.js 0.170.0。
- `dist/OrbitControls.js`：视角控制。
- `dist/Reflector.js`：实时倒影。
- `server.cjs`：仅监听本机地址的静态预览服务。

依赖许可见 `THIRD_PARTY_NOTICES.md`。参考视频、参考截图和本地发布配置不属于 GitHub 源码交付内容。
