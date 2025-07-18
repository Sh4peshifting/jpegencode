# 数字集成电路设计课程设计

## 设计题目
基于已有设计 [jpegencode](https://github.com/freecores/jpegencode)，完成仿真验证、DC综合、形式验证、布局布线、后端版图验证、PT、后仿真验证等步骤。

## 文件结构
```
.
├── Astro # 自动布局布线
├── DC # DC 综合
├── document # 原项目文档
├── FM_RTL_PostDC # FM 形式验证
├── jpeg_encode_asic # 针对本设计修改后的 JPEG 编码器 Verilog 源码
├── jpeg_encode_core # JPEG 编码器 Verilog 源码
│   ├── pic # 存放编码输入输出图片
│   ├── rtl # 存放RTL 源码
│   └── sim # 存放仿真脚本和Testbench
├── LaTeXCode4Doc # 文档及报告的latex源码
├── layout # 后端验证
├── lib # 工艺库链接
├── original # 原项目冗余脚本
├── README.md # 项目说明
├── run_dc.sh
├── run_FM.sh
└── run_sim.sh

```

> [!NOTE]
> 本仓库为山东科技大学电子信息科学与技术2021级数字集成电路设计课程设计。
> 使用环境为实验室虚拟机提供，根据实际情况，可能需要修改各个目录下的脚本文件及配置文件，以适应自己的工程。
> 可参照各个目录下的 README，按照步骤进行设计。

