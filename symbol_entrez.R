#安装小鼠包
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("org.Mm.eg.db")

#然后从https://www.ncbi.nlm.nih.gov/gene/上找到gene名称对应id

#Mm才是小鼠基因 Hs是人的
library("org.Mm.eg.db") 

#转换GeneID 到entrezID
g<-read.table("D:/R_work/Gene-ID/gene.txt", header=F,check.names=FALSE)

library(tidyverse)
library(clusterProfiler)

#从ENSEBL基因ID转换为ENTREZID
name <- bitr(g,fromType = 'ENSEMBL',toType = 'ENTREZID',OrgDb = 'org.Mm.eg.db')


