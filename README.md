# 数字集成电路设计课程设计
> 山东科技大学电子信息科学与技术2021级数字集成电路设计课程设计

## 设计题目
基于已有设计 [jpegencode](https://github.com/freecores/jpegencode)，完成仿真验证、DC综合、形式验证、布局布线、后端版图验证、PT、后仿真验证等步骤。

## 文件结构
```
.
├── DC # DC 综合
├── document # 原项目文档
├── FM_RTL_PostDC # FM 形式验证
├── jpeg_encode_core # JPEG 编码器 Verilog 源码
│   ├── pic # 存放编码输入输出图片
│   ├── rtl # 存放RTL 源码
│   └── sim # 存放仿真脚本和Testbench
├── LaTeX-src # 文档及报告的latex源码
│   └── pic
├── lib # 工艺库链接
├── original # 原项目冗余脚本
├── README.md # 项目说明
├── run_dc.sh
├── run_FM.sh
└── run_sim.sh

```
## 使用步骤
1. 终端执行 `source /opt/eda_env.sh` 配置相关 EDA 软件环境变量
2. 执行 `./run_sim.sh` 进行仿真
3. 执行 `./run_dc.sh` 进行 DC 综合
4. 执行 `./run_FM.sh` 进行形式验证

## 备注
- 参照各个目录下的 `Readme` 文件，按照步骤进行设计。
- 根据实际情况，可能需要修改各个目录下的脚本文件，以适应自己的工程。

