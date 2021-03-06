library(reshape2)
cmi<-as.matrix(read.csv(file="test_cmi.csv", header = T,row.names = 1 ))
ecmi<-as.matrix(read.csv(file="test_ecmi.csv", header = T, row.names = 1))
cc<-as.matrix(read.csv(file="test_cc.csv", header = T))
cc<-cc[,-1]
ecc<-as.matrix(read.csv(file="test_ecc.csv", header = T, row.names = 1))
cp<-as.matrix(read.csv(file="test_cp.csv", header = T))
cp<-cp[,-1]
ecp<-as.matrix(read.csv(file="test_ecp.csv", header = T, row.names = 1))
cp1<-as.matrix(read.csv(file="test_cp1.csv", header = T))
cp1<-cp1[,-1]
ecp1<-as.matrix(read.csv(file="test_ecp1.csv", header = T, row.names = 1))
cp2<-as.matrix(read.csv(file="test_cp2.csv", header = T))
cp2<-cp2[,-1]
ecp2<-as.matrix(read.csv(file="test_ecp2.csv", header = T, row.names = 1))
hcm<-as.matrix(read.csv(file="test_hc.csv", header = T))
hcm<-hcm[,-1]
ehcm<-as.matrix(read.csv(file="test_ehc.csv", header = T, row.names = 1))
rsa<-as.matrix(read.csv(file="test_rsa.csv", header = T, row.names = 1))
ersa<-as.matrix(read.csv(file="test_ersa.csv", header = T, row.names = 1))
scm<-as.matrix(read.csv(file="test_scm.csv", header = T))
scm<-scm[,-1]
escm<-as.matrix(read.csv(file="test_escm.csv", header = T, row.names = 1))
ssp<-as.matrix(read.csv(file="test_sspred.csv", header = T, row.names = 1))
essp<-as.matrix(read.csv(file="test_essp.csv", header = T, row.names = 1))
cmi<-t(cmi)
ecmi<-t(ecmi)
rsa<-t(rsa)
ersa<-t(ersa)
cmi.m<-melt(cmi)
ecmi.m<-melt(ecmi)
cc.m<-melt(cc)
ecc.m<-melt(ecc)
cp.m<-melt(cp)
ecp.m<-melt(ecp)
cp1.m<-melt(cp1)
ecp1.m<-melt(ecp1)
cp2.m<-melt(cp2)
ecp2.m<-melt(ecp2)
hcm.m<-melt(hcm)
ehcm.m<-melt(ehcm)
rsa.m<-melt(rsa)
ersa.m<-melt(ersa)
scm.m<-melt(scm)
escm.m<-melt(escm)
ssp.m<-melt(ssp)
essp.m<-melt(essp)
df<-as.data.frame(cmi.m$value)
df<-cbind(df, cc.m$value, cp.m$value, cp1.m$value, cp2.m$value, hcm.m$value, rsa.m$value, scm.m$value, ssp.m$value)
df<-cbind(df, ecc.m$value, ecmi.m$value, ecp.m$value, ecp1.m$value, ecp2.m$value, ehcm.m$value, ersa.m$value, escm.m$value, essp.m$value)
write.csv(df, file="test_df.csv")
