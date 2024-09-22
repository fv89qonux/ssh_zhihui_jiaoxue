## 本项目实现的最终作用是基于SSH高校智慧教学辅导平台系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 学生信息管理
 - 帖子管理
 - 教师管理
 - 管理员登录
 - 系统公告管理
 - 论坛板块管理
### 第2个角色为教师角色，实现了如下功能：
 - 作业管理
 - 教学视频管理
 - 教师登录
 - 测试题目管理
 - 试卷信息管理
 - 课程信息管理
 - 问题答疑管理
### 第3个角色为用户角色，实现了如下功能：
 - 作业下载
 - 修改个人信息
 - 分数查看
 - 学习交流
 - 教学视频查看
 - 教学课程查看
 - 用户首页
 - 系统公告查看
 - 考试管理
 - 问题答疑
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_zhihui_jiaoxue

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_admin](#t_admin) | 管理员表 |
| [t_catelog](#t_catelog) |  |
| [t_doc](#t_doc) |  |
| [t_fenshu](#t_fenshu) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_huifu](#t_huifu) |  |
| [t_jiaoyuan](#t_jiaoyuan) |  |
| [t_leixing](#t_leixing) |  |
| [t_liuyan](#t_liuyan) |  |
| [t_shipin](#t_shipin) |  |
| [t_shiti](#t_shiti) |  |
| [t_stu](#t_stu) |  |
| [t_tea](#t_tea) |  |
| [t_timu](#t_timu) |  |
| [t_zhuti](#t_zhuti) |  |
| [t_zuoyes](#t_zuoyes) |  |
| [t_zuoyet](#t_zuoyet) |  |

**表名：** <a id="t_admin">t_admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | UserId |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | userName |   varchar   | 66 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | userPw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="t_catelog">t_catelog</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | catelog_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | catelog_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | catelog_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_doc">t_doc</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | mingcheng |   varchar   | 66 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  4   | fujianYuanshiming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件原名  |
|  5   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  6   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_fenshu">t_fenshu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | fenshu_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | shiti_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | stu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  4   | fenshu |   int   | 10 |   0    |    Y     |  N   |   NULL    | 分数  |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | gonggao_id |   int   | 10 |   0    |    N     |  Y   |       | 公告ID  |
|  2   | gonggao_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告标题  |
|  3   | gonggao_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | gonggao_data |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | gonggao_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_huifu">t_huifu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  5   | stu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  6   | zhuti_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_jiaoyuan">t_jiaoyuan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | jiaojuan_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | stu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  3   | shiti_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | timu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | timu_daan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_leixing">t_leixing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | leixing_id |   int   | 10 |   0    |    N     |  Y   |       | 公告ID  |
|  2   | leixing_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告标题  |
|  3   | leixing_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | leixing_data |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | leixing_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_liuyan">t_liuyan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | neirong |   varchar   | 2000 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | liuyanshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | stu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  5   | huifu |   varchar   | 2000 |   0    |    Y     |  N   |   NULL    |   |
|  6   | huifushi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_shipin">t_shipin</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | shipin_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | shipin_name |   varchar   | 66 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shipin_jianjie |   varchar   | 2000 |   0    |    Y     |  N   |   NULL    |   |
|  4   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  5   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | fujianYuanshiming |   varchar   | 2000 |   0    |    Y     |  N   |   NULL    | 附件原名  |
|  7   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  8   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_shiti">t_shiti</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | shiti_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | shiti_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shiti_jieshao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | timuIdList |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | shiti_shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_stu">t_stu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | stu_id |   int   | 10 |   0    |    N     |  Y   |       | 学生id  |
|  2   | stu_xuehao |   varchar   | 66 |   0    |    Y     |  N   |   NULL    |   |
|  3   | stu_realname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | stu_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | stu_age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  7   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  8   | login_pw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_tea">t_tea</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | tea_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | tea_bianhao |   varchar   | 66 |   0    |    Y     |  N   |   NULL    |   |
|  3   | tea_realname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | tea_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | tea_age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | login_pw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_timu">t_timu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | timu_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | timu_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | timu_xuanxianga |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | timu_xuanxiangb |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | timu_xuanxiangc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | timu_xuanxiangd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | timu_daan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | timu_fenshu |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | timu_leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_zhuti">t_zhuti</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  5   | fujianYuanshiming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件原名  |
|  6   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  7   | stu_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  8   | catelog_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  9   | shifouding |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | shifoujing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_zuoyes">t_zuoyes</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  4   | tijiaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | stuId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | zuoyetId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | fenshu |   int   | 10 |   0    |    Y     |  N   |   NULL    | 分数  |
|  8   | huifu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_zuoyet">t_zuoyet</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |
|  4   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  5   | fabushi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jieshushi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | tea_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

