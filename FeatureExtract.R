library(ftrCOOL)
moonpath = "D:/GitHub-IBB/Data/moonlight.fasta"
nonpath  = "D:/GitHub-IBB/Data/nonMP.fasta"

#######################################################

bindmoonnon <- function(moonlight, nonmoonlight)
{
  mp = cbind(moonlight, class2)
  nonmp = cbind(nonmoonlight, class1)
  b = rbind(mp, nonmp)
  rb = round(b, 6)
  return(rb)
}

######################################
###  QSOrder
######################################

non = QSOrder(nonpath)
moon =QSOrder(moonpath)
res  = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/QSOrder.csv",row.names = TRUE)

######################################
###     SAAC
######################################

non = ftrCOOL::SAAC(nonpath)
moon = ftrCOOL::SAAC(moonpath)
res  = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/SAAC.csv",row.names = TRUE)

######################################
### AAKpartComposition(AAKPC)
######################################

moon = ftrCOOL::AAKpartComposition(moonpath)
non  = ftrCOOL::AAKpartComposition(nonpath)
res  = bindmoonnon(moon, non)
write.csv(res, "D:/GitHub-IBB/Data/fs/AAKpartComposition.csv",row.names = TRUE)

######################################
###  ExpectedValueAA
######################################

non = ftrCOOL::ExpectedValueAA(nonpath)
moon =ftrCOOL::ExpectedValueAA(moonpath)
res  = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/ExpectedValueAA.csv",row.names = TRUE)

######################################
###      DDE
######################################
non = ftrCOOL::DDE(nonpath)
moon =ftrCOOL::DDE(moonpath)
res  = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/DDE.csv",row.names = TRUE)

######################################
###          AAutoCor
######################################

moon = ftrCOOL::AAutoCor()
non  = ftrCOOL::AAutoCor()
res  = bindmoonnon(moon, non)
write.csv(res, file="D:/GitHub-IBB/fs/Data/AAutoCor.csv", row.names = TRUE)

######################################
###  QSAApair
######################################

non = ftrCOOL::QSAApair(nonpath)
moon =ftrCOOL::QSAApair(moonpath)
res  = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/QSAApair.csv",row.names = TRUE)

######################################
###  PseKRAAC_T7
######################################

non = ftrCOOL::PseKRAAC_T7(nonpath)
moon =ftrCOOL::PseKRAAC_T7(moonpath)
res = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/PseKRAAC_T7.csv",row.names = TRUE)

######################################
###     PseKRAAC_T6A
######################################

non = ftrCOOL::PseKRAAC_T6A(nonpath)
moon = ftrCOOL::PseKRAAC_T6A(moonpath)
res = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/PseKRAAC_T6A.csv",row.names = TRUE)

######################################
###    SGAAC
######################################

non = ftrCOOL::SGAAC(nonpath)
moon =ftrCOOL::SGAAC(moonpath)
res = bindmoonnon(moon, non)
write.csv(res,"D:/GitHub-IBB/Data/fs/SGAAC.csv",row.names = TRUE)
