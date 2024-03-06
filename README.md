# V3-ClimateDB
使用PostgreSQL管理SURF_CLI_CHN_MUL_DAY_V3.0数据集

### 目标功能 
1. V3气象原始数据自动整理去重复 PG入库
2. NCDC全球气象数据 PG入库
3. 数据query出库 （包含多数据库组合出库）
4. 数据出库时自动处理各数据格式到降水值（单位mm）
5. 数据出库时自动处理Altitude到真实值 （使用DEM附件实现）
6. 出库ANUSPLIN格式支持 （配合AUTO-ANUSPLIN使用 实现自动化插值）
7. ...

### 正在重构+重写部分功能 暂时先贴一个readme在这
