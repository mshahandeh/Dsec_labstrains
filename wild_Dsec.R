library(ggplot2)
library(ggpubr)								#use to mulitple plot ggplots


##########################################longevity###########################################

#rep2
Time<-c(	0,	1,	5,	6,	7,	8,	12,	13,	14,	15,	16,	19,	20,	21,	22,	23,	26,	27,	28,	29,	30,	33,	34,	35,	36,	37,	40,	41,	42,	43,	44,	47,	48,	49,	50,	51,	54,	55,	56,	57,	58,	61,	62)
DmelCS_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.8,	0.8,	0.7,	0.6,	0.5,	0.5,	0.5,	0.4,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0)
Dsec07_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.4,	0.4,	0.4,	0.4,	0.3,	0.1,	0)
Dsec28_CSP<-c(	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.7,	0.7,	0.7,	0.7,	0.7,	0.6,	0.6,	0.6,	0.6,	0.6,	0.5,	0.5,	0.5,	0.5,	0.5,	0.2,	0.2,	0.2,	0.2,	0.1,	0,	0)
ArideA3F311_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.8,	0.7,	0.6,	0.4,	0.4,	0.2,	0.2,	0.2,	0.1,	0.1,	0.1,	0.1,	0,	0,	0)
Aride3312_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.7,	0.6,	0.4,	0.3,	0.3,	0.3,	0.2,	0.2,	0.1,	0.1,	0,	0,	0,	0)
Praislin7611_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.8,	0.4,	0.4,	0.4,	0.4,	0.4,	0.1,	0)
Praislin7621_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.8,	0.8,	0.8,	0.7,	0.7,	0.7,	0.6,	0.5,	0.5,	0.1,	0.1,	0.1,	0.1,	0.1,	0,	0)
Mahe13111_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.875,	0.875,	0.875,	0.875,	0.875,	0.75,	0.75,	0.75,	0.75,	0.75,	0.75,	0.625,	0.625,	0.625,	0.625,	0.625,	0.625,	0.5,	0.5,	0.5,	0.375,	0.25,	0.25,	0.125,	0.125,	0.125,	0)
Mahe13112_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.4,	0.3,	0.3,	0.3,	0.2,	0,	0)

plot(Time, DmelCS_CSP, type = "l", col = rgb(66, 199, 244, 100, maxColorValue = 255), lwd = 2,  xlab = "Day", ylab = "Cumulative survival probability", axes = FALSE, ylim = c(0,1), xlim = c(0,65))
points(Time, DmelCS_CSP, pch = 16, col = rgb(66, 199, 244, 255, maxColorValue = 255), cex = 1)
lines(Time, Dsec07_CSP, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) # circle
points(Time, Dsec07_CSP, pch = 16, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)
lines(Time, Dsec28_CSP, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Dsec28_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 16, cex = 1)
lines(Time, Praislin7611_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7611_CSP, pch = 22, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# square
lines(Time, Praislin7621_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7621_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 24, cex = 1)# triangle
lines(Time, ArideA3F311_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, ArideA3F311_CSP, pch = 23, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1) # diamond
lines(Time, Aride3312_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2)
points(Time, Aride3312_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 25, cex = 1)# upside down triangle  
lines(Time, Mahe13111_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13111_CSP, pch = 4, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# X
lines(Time, Mahe13112_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13112_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 3, cex = 1)# +
axis(1, lty=1, at = c(0,5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60,65), labels = FALSE)
axis(2)

#rep1
Time<-c(	0,	1,	5,	6,	7,	8,	9,	12,	13,	14,	15,	16,	19,	20,	21,	22,	23,	26,	27,	28,	29,	30,	33,	34,	35,	36,	37,	40,	41,	42,	43,	44,	47,	48,	49,	50,	51,	54,	55,	56,	57,	58,	60,	62,	63,	64,	65)
DmelCS_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.7,	0.7,	0.6,	0.4,	0.3,	0.3,	0.2,	0.2,	0.2,	0.2,	0.2,	0.2,	0.2,	0.2,	0.2,	0.2,	0.1,	0,	0,	0)
Dsec07_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.7,	0.5,	0.5,	0.5,	0.2,	0.2,	0.2,	0.2,	0.2,	0.1,	0.1,	0.1,	0.1,	0.1,	0,	0,	0,	0,	0)
Dsec28_CSP<-c(	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.6,	0.6,	0.6,	0.6,	0.6,	0.6,	0.6,	0.5,	0.5,	0.5,	0.4,	0.4,	0.4,	0.3,	0.3,	0.1,	0.1,	0.1,	0.1,	0.1,	0,	0,	0,	0,	0)
Praislin7611_CSP<-c(	1,	1,	1,	1,	1,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.888888888888889,	0.777777777777778,	0.777777777777778,	0.777777777777778,	0.555555555555556,	0.555555555555556,	0.555555555555556,	0.555555555555556,	0.555555555555556,	0.555555555555556,	0.555555555555556,	0.333333333333333,	0.333333333333333,	0.333333333333333,	0.333333333333333,	0.222222222222222,	0.222222222222222,	0.222222222222222,	0.222222222222222,	0.222222222222222,	0.222222222222222,	0.111111111111111,	0.111111111111111,	0.111111111111111,	0.111111111111111,	0)
Praislin7621_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.5,	0.5,	0.5,	0.5,	0.5,	0.3,	0.3,	0.3,	0.3,	0.1,	0.1,	0.1,	0.1,	0,	0)
ArideA3F311_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.6,	0.6,	0.4,	0.4,	0.4,	0.4,	0.4,	0.1,	0.1,	0.1,	0.1,	0.1,	0,	0,	0,	0,	0)
Aride3312_CSP<-c(	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0.9,	0.9,	0.8,	0.7,	0.7,	0.7,	0.5,	0.3,	0.3,	0.3,	0.2,	0.2,	0.1,	0.1,	0,	0,	0,	0,	0,	0,	0,	0)
Mahe13111_CSP<-c(	1,	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.9,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.6,	0.6,	0.6,	0.5,	0.5,	0.1,	0.1,	0.1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0)
Mahe13112_CSP<-c(	1,	1,	0.9,	0.9,	0.9,	0.9,	0.9,	0.8,	0.8,	0.8,	0.8,	0.8,	0.8,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.7,	0.6,	0.5,	0.5,	0.5,	0.5,	0.5,	0.5,	0.4,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.3,	0.1,	0.1,	0)

plot(Time, DmelCS_CSP, type = "l", col = rgb(66, 199, 244, 100, maxColorValue = 255), lwd = 2,  xlab = "Day", ylab = "Cumulative survival probability", axes = FALSE, ylim = c(0,1), xlim = c(0,65))
points(Time, DmelCS_CSP, pch = 16, col = rgb(66, 199, 244, 255, maxColorValue = 255), cex = 1)
lines(Time, Dsec07_CSP, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) # circle
points(Time, Dsec07_CSP, pch = 16, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)
lines(Time, Dsec28_CSP, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Dsec28_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 16, cex = 1)
lines(Time, Praislin7611_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7611_CSP, pch = 22, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# square
lines(Time, Praislin7621_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7621_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 24, cex = 1)# triangle
lines(Time, ArideA3F311_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, ArideA3F311_CSP, pch = 23, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1) # diamond
lines(Time, Aride3312_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2)
points(Time, Aride3312_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 25, cex = 1)# upside down triangle  
lines(Time, Mahe13111_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13111_CSP, pch = 4, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# X
lines(Time, Mahe13112_CSP, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13112_CSP, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 3, cex = 1)# +
axis(1, lty=1, at = c(0,5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60,65), labels = TRUE)
axis(2)

library(survival)

x<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/longevity/rep2/longevity_wilddesc_cps.csv")

## compare DmelCS to Dsec07
Dsec07surv<-Surv(x$Time_07, x$Status_07)
Dsec07fit<-survfit(Dsec07surv ~ x$Treatment_07)
plot(Dsec07fit, col = c("blue", "green"))
survdiff(Dsec07surv ~ x$Treatment_07)

## compare DmelCS to Dsec28
Dsec28surv<-Surv(x$Time_28, x$Status_28)
Dsec28fit<-survfit(Dsec28surv ~ x$Treatment_28)
plot(Dsec28fit, col = c("blue", "green"))
survdiff(Dsec28surv ~ x$Treatment_28)

## compare DmelCS to DsecMahe13111
DsecMahe13111surv<-Surv(x$Time_Mahe13111, x$Status_Mahe13111)
DsecMahe13111fit<-survfit(DsecMahe13111surv ~ x$Treatment_Mahe13111)
plot(DsecMahe13111fit, col = c("blue", "green"))
survdiff(DsecMahe13111surv ~ x$Treatment_Mahe13111)

## compare DmelCS to DsecMahe13112
DsecMahe13112surv<-Surv(x$Time_Mahe13112, x$Status_Mahe13112)
DsecMahe13112fit<-survfit(DsecMahe13112surv ~ x$Treatment_Mahe13112)
plot(DsecMahe13112fit, col = c("blue", "green"))
survdiff(DsecMahe13112surv ~ x$Treatment_Mahe13112)

## compare DmelCS to DsecAride3312
DsecAride3312surv<-Surv(x$Time_Aride3312, x$Status_Aride3312)
DsecAride3312fit<-survfit(DsecAride3312surv ~ x$Treatment_Aride3312)
plot(DsecAride3312fit, col = c("blue", "green"))
survdiff(DsecAride3312surv ~ x$Treatment_Aride3312)

## compare DmelCS to DsecArideA3F311
DsecArideA3F311surv<-Surv(x$Time_ArideA3F311, x$Status_ArideA3F311)
DsecArideA3F311fit<-survfit(DsecArideA3F311surv ~ x$Treatment_ArideA3F311)
plot(DsecArideA3F311fit, col = c("blue", "green"))
survdiff(DsecArideA3F311surv ~ x$Treatment_ArideA3F311)

## compare DmelCS to DsecPraslin7611
DsecPraslin7611surv<-Surv(x$Time_Praslin7611, x$Status_Praslin7611)
DsecPraslin7611fit<-survfit(DsecPraslin7611surv ~ x$Treatment_Praslin7611)
plot(DsecPraslin7611fit, col = c("blue", "green"))
survdiff(DsecPraslin7611surv ~ x$Treatment_Praslin7611)

## compare DmelCS to DsecPraslin7621
DsecPraslin7621surv<-Surv(x$Time_Praslin7621, x$Status_Praslin7621)
DsecPraslin7621fit<-survfit(DsecPraslin7621surv ~ x$Treatment_Praslin7621)
plot(DsecPraslin7621fit, col = c("blue", "green"))
survdiff(DsecPraslin7621surv ~ x$Treatment_Praslin7621)
##########################################single fly ovi######################################

data<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/Figure 2/single_fly_ovi_wildDsec.csv")
p<- ggplot(data, aes(x=Order, level = Order, y=PI, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(aes(size = Total.eggs), position=position_jitterdodge(jitter.width = .2),alpha=0.3) +
  scale_y_continuous(name= "", limits = c(-1,1)) + 
  theme_classic() + 
  #theme(legend.position = "none") +
  geom_hline(yintercept=0)

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(data$PI, 
                     data$Strain, p.adjust = "bonf")

p<- ggplot(data, aes(x=Order, y=Total.eggs, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = .2),alpha=0.3) +
  scale_y_continuous(name= "") + 
  theme_classic() + 
  theme(legend.position = "none") +
  geom_hline(yintercept=0)

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(data$Total.eggs, 
                     data$Strain, p.adjust = "bonf")

##########################################trap assays######################################

data<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/Figure 2/Trapassays_wildDsec.csv")
p<- ggplot(data, aes(x=Order, level = Order, y=PI, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255),  rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = .2),alpha=0.3, size = 2) +
  scale_y_continuous(name= "", limits = c(-1,1)) + 
  theme_classic() + 
  theme(legend.position = "none") +
  geom_hline(yintercept=0)

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(data$PI, 
                     data$Genotype, p.adjust = "bonf")

data<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/Trap assays/Trapassays_wildDsec.csv")
p<- ggplot(data, aes(x=Order, y=Percent.un.trapped, fill = Order), inherit.aes = TRUE) +
  stat_summary(fun=mean, geom="bar", col = "black", fill = c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255))) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = "black", width = .3) +
  geom_point(position=position_jitterdodge(jitter.width = .25),alpha=0.3, size = 2) +
  scale_y_continuous(name= "", limits = c(0,1)) + 
  theme_classic() + 
  theme(legend.position = "none") 

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(data$Percent.un.trapped, 
                     data$Genotype, p.adjust = "bonf")


CS<-c(-0.238095238,	-0.192307692,	0.260869565,	-0.269230769,	-0.541666667,	-0.083333333,	-0.423076923,	0,	-0.04,	-0.304347826,	-0.166666667,	-0.333333333,	0.307692308,	0.48,	0.041666667,	0.173913043478261,	-0.6,	-0.6,	-0.08,	0.291666666666667,	-0.28,	-0.4,	-0.28,	0,	-0.541666666666667,	0.565217391304348,	0.32,	-0.291666666666667)
wilcox.test(CS, mu = 0)
s07<-c(0.454545455,	0.473684211,	-0.619047619,	-0.590909091,	1,	0.678571429,	0.833333333,	0.956521739,	-0.16,	0.916666667,	0.56,	0.75,	0.833333333,	0.173913043,	0.173913043,	0.708333333,		0.5,	0,	-0.36,	0.56,	0.521739130434783,	0.833333333333333,	0.541666666666667,	0.64,	0.25,	0.5,	0.333333333333333,	0.666666666666667)
wilcox.test(s07, mu = 0)
s28<-c(0.8,	0.5,	0.761904762,		0.578947368,	0.636363636,			-0.24,	0.47826087,	0.416666667,			0.2,		0.347826087,	0.75,	0.304347826,	0.5,		0.5,		0.541666666666667,	0.541666666666667,	-0.04,	0.8,	0.64,	0.12,	-0.260869565217391,	0.52,	0.12,	0.24,		0.958333333333333,	0.2,	0.375,	0.6)
wilcox.test(s28, mu = 0)
Praislin7611<-c(-0.269230769,	0.083333333,	0.652173913,		-0.16,	-0.041666667,	-0.375,	0.423076923,	0.541666667,	0.5,	0.043478261,	0.148148148,	-0.04,	0.541666667,	0.192307692,	0.153846154,	0.347826087,	0.416666667,	-0.083333333,	0.304347826,	-0.041666667,	0.56,	-0.44,	0.461538461538462,	0.458333333333333,	0.375,	0.75,	-0.16,	0.44,	0.52,	0.458333333333333,	0.75)
wilcox.test(Praislin7611, mu = 0)
Praislin7621<-c(0.055555556,	0.913043478,	0.428571429,	0.04,	0.7,	0.615384615,	0.777777778,	0.5,	0.416666667,	0.333333333,	0.72,	0.333333333,	0.708333333,	0.48,	0.739130435,	0.434782609,	0.333333333,	0.4,	0.08,	-0.208333333333333,	0.2,	0.5,	0.636363636363636,	-0.260869565217391,	0.782608695652174,	0.652173913043478,	0.666666666666667,	0.76,	0.24,	0.52,	0.458333333333333,	0.75)
wilcox.test(Praislin7621, mu = 0)
ArideA3F311<-c(-0.208333333,	0.36,	0.260869565,	0.666666667,	0.363636364,	-0.066666667,	0.28,	0.458333333,	0.36,	0.4,	0.25,	0.19047619,	0.615384615,	0.666666667,	0.739130435,	0.12,	0.173913043,	0.48,	0.6,	0.583333333,	0.48,	0.56,	0.521739130434783,	0.458333333333333,	0.4,	0.04,	0.416666666666667,	0.833333333333333,	0.5,	0.0833333333333333)
wilcox.test(ArideA3F311, mu = 0)
Aride3312<-c(0.228571429,	0.692307692,	0.714285714,	0.588235294,	0.6,	-0.107142857,	0.44,	0.48,	0.653846154,	0.44,	0.458333333,	0.434782609,	0.541666667,	0.44,	0.75,	0.652173913,	1,	-0.090909091,	0.75,	0.083333333,	-0.291666667,	-0.173913043,	0.652173913,	0.666666667,	0.541666666666667,	0.25,	0.56,	0.32,	0.36,	0.583333333333333)
wilcox.test(Aride3312, mu = 0)
Mahe13112<-c(0.681818182,	0.772727273,	-0.583333333,	0.259259259,	-0.04,	0.52,	0.166666667,	0.714285714,	0.45,	0.391304348,	0.583333333333333,	0.545454545454545,	-0.2,	0.2,	0.545454545454545,	0,	0.125,	-0.458333333333333,	0.04,	0.347826086956522,	0.0416666666666667,	-0.173913043478261,	0.0434782608695652,	0.826086956521739,	0.5,	0.347826086956522,	0.625,	0.68)
wilcox.test(Mahe13112, mu = 0)

##########################################molecular phenotypes######################################

data<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/DsecWildCaught_molecularphenotypes/Osn_counts.csv")
data

data_noab4<-data|>
  filter(Sensillum %in% c("ab1", "ab3", "ab5", "ac3"))

ab1<-data|>
  filter(Sensillum %in% "ab1")

ab3<-data|>
  filter(Sensillum %in% "ab3")

ab5<-data|>
  filter(Sensillum %in% "ab5")

ac3<-data|>
  filter(Sensillum %in% "ac3")

data_noab4$Genotype <- factor(data$Genotype, levels=c("Dsec07", "P7612", "A3312", "M13112", "DmelCS"))
data_noab4$Osn <- factor(data$Osn, levels = c("Or10a", "Or42b", "Or85b", "Or47a", "Or82a", "Ir75b"))
par(mar=c(1,1,4,1))
p<-ggplot(ac3, aes(x= Genotype, y=count, fill = Species), inherit.aes = TRUE) +
  geom_boxplot(outlier.colour = NA) +
  scale_fill_manual(values = c(rgb(66, 199, 244, 100, maxColorValue = 255),  rgb(232, 164, 35, 100, maxColorValue = 255))) +
  geom_point(position=position_jitterdodge(jitter.width = .2),alpha=0.3, size = 2) +
  scale_y_continuous(name = "Olfactory sensory neuron number", limits = c(0,30)) +
  theme_classic() + 
  xlab("") +
  theme(legend.position = "none") +
  facet_grid(~Osn, scales="free_x", space="free_x", switch = "x", labeller = labeller(
  Species = c(`Dmel` = "Dmel", `Dsec` = "Dsec"))) +
  theme(strip.background = element_rect(fill="white", color = "white"), strip.text.y = element_text(size = 17), strip.text.x = element_text(size = 11))
ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

y<-data|>
  filter(Osn %in% "Or42b")

pairwise.wilcox.test(y$count, y$Genotype,  p.adjust = "bonf")


pairwise.wilcox.test(data$count, 
                     interaction(data$Genotype, data$Osn, sep=':'), p.adjust = "none")

##########################################octanoic acid resistance#########################################

data<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/OA resistance/OAsurvival_wildDsec_males.csv")

p<- ggplot(data, aes(x=Order, level = Order, y=Prop.surv, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = .3),alpha=0.3,cex=2) +
  scale_y_continuous(name= "") + 
  theme_classic() + 
  theme(legend.position = "none")
ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(data$Prop.surv, 
                     data$Strain, p.adjust = "bonf")

Time<-c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60)
CS<-c(1,	0.9453125,	0.890625,	0.8359375,	0.7421875,	0.6796875,	0.625,	0.5703125,	0.515625,	0.4140625,	0.328125,	0.2890625,	0.2109375)
s07<-c(1,	0.992592592592593,	0.992592592592593,	0.985185185185185,	0.985185185185185,	0.985185185185185,	0.985185185185185,	0.977777777777778,	0.977777777777778,	0.977777777777778,	0.977777777777778,	0.977777777777778,	0.97037037037037)
s28<-c(1,	1,	0.977777777777778,	0.962962962962963,	0.962962962962963,	0.955555555555556,	0.955555555555556,	0.955555555555556,	0.948148148148148,	0.948148148148148,	0.948148148148148,	0.940740740740741,	0.940740740740741)
Praislin7611<-c(1,	0.990196078431373,	0.901960784313726,	0.872549019607843,	0.813725490196078,	0.794117647058823,	0.774509803921569,	0.764705882352941,	0.745098039215686,	0.725490196078431,	0.696078431372549,	0.696078431372549,	0.696078431372549)
Praislin7612<-c(1,	1,	0.981132075471698,	0.952830188679245,	0.933962264150943,	0.905660377358491,	0.89622641509434,	0.877358490566038,	0.858490566037736,	0.849056603773585,	0.820754716981132,	0.811320754716981,	0.811320754716981)
ArideA3F311<-c(1,	1,	0.942857142857143,	0.923809523809524,	0.923809523809524,	0.923809523809524,	0.923809523809524,	0.923809523809524,	0.895238095238095,	0.885714285714286,	0.885714285714286,	0.885714285714286,	0.876190476190476)
Aride3312<-c(1,	1,	0.969072164948454,	0.927835051546392,	0.907216494845361,	0.865979381443299,	0.855670103092783,	0.845360824742268,	0.814432989690722,	0.814432989690722,	0.814432989690722,	0.804123711340206,	0.793814432989691)
Mahe13111<-c(1,	0.99236641221374,	0.99236641221374,	0.99236641221374,	0.99236641221374,	0.984732824427481,	0.969465648854962,	0.961832061068702,	0.954198473282443,	0.954198473282443,	0.954198473282443,	0.946564885496183,	0.946564885496183)
Mahe13112<-c(1,	1,	0.989247311827957,	0.978494623655914,	0.956989247311828,	0.956989247311828,	0.946236559139785,	0.913978494623656,	0.881720430107527,	0.870967741935484,	0.860215053763441,	0.849462365591398,	0.849462365591398)

plot(Time, CS, type = "l", col = rgb(66, 199, 244, 100, maxColorValue = 255), lwd = 2,  xlab = "Day", ylab = "Cumulative survival probability", axes = FALSE, ylim = c(0,1), xlim = c(0,65))
points(Time, CS, pch = 16, col = rgb(66, 199, 244, 255, maxColorValue = 255), cex = 1)
lines(Time, s07, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) # circle
points(Time, s07, pch = 16, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)
lines(Time, s28, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, s28, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 16, cex = 1)
lines(Time, Praislin7611, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7611, pch = 22, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# square
lines(Time, Praislin7621, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7621, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 24, cex = 1)# triangle
lines(Time, ArideA3F311, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, ArideA3F311, pch = 23, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1) # diamond
lines(Time, Aride3312, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2)
points(Time, Aride3312, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 25, cex = 1)# upside down triangle  
lines(Time, Mahe13111, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13111, pch = 4, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# X
lines(Time, Mahe13112, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13112, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 3, cex = 1)# +
axis(1, lty=1, at = c(0,5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60), labels = TRUE)
axis(2)

Time<-c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60)
CSmales<-c(1,	0.990909090909091,	0.845454545454545,	0.545454545454545,	0.363636363636364,	0.281818181818182,	0.218181818181818,	0.145454545454545,	0.109090909090909,	0.0545454545454545,	0.0272727272727273,	0,	0)
ArideA3F311males<-c(1,	1,	1,	0.970588235294118,	0.950980392156863,	0.950980392156863,	0.92156862745098,	0.892156862745098,	0.892156862745098,	0.882352941176471,	0.872549019607843,	0.852941176470588,	0.852941176470588)
s28males<-c(1,	1,	0.970588235294118,	0.96078431372549,	0.941176470588235,	0.931372549019608,	0.92156862745098,	0.92156862745098,	0.911764705882353,	0.911764705882353,	0.901960784313726,	0.872549019607843,	0.872549019607843)
Praislin7611males<-c(1,	1,	0.990566037735849,	0.971698113207547,	0.924528301886792,	0.886792452830189,	0.867924528301887,	0.849056603773585,	0.839622641509434,	0.830188679245283,	0.820754716981132,	0.80188679245283,	0.80188679245283)
Praislin7621males<-c(1,	1,	1,	1,	0.990566037735849,	0.981132075471698,	0.962264150943396,	0.962264150943396,	0.962264150943396,	0.952830188679245,	0.952830188679245,	0.952830188679245,	0.952830188679245)
s07males<-c(1,	1,	1,	1,	1,	1,	0.980582524271845,	0.980582524271845,	0.980582524271845,	0.961165048543689,	0.941747572815534,	0.932038834951456,	0.932038834951456)
Aride3312males<-c(1,	1,	0.990476190476191,	0.942857142857143,	0.914285714285714,	0.895238095238095,	0.857142857142857,	0.819047619047619,	0.80952380952381,	0.761904761904762,	0.752380952380952,	0.742857142857143,	0.733333333333333)
Mahe13111males<-c(1,	1,	0.980392156862745,	0.96078431372549,	0.941176470588235,	0.931372549019608,	0.911764705882353,	0.872549019607843,	0.852941176470588,	0.823529411764706,	0.794117647058823,	0.784313725490196,	0.784313725490196)
Mahe13112males<-c(1,	1,	0.981308411214953,	0.953271028037383,	0.934579439252336,	0.906542056074766,	0.88785046728972,	0.869158878504673,	0.841121495327103,	0.822429906542056,	0.822429906542056,	0.794392523364486,	0.794392523364486)

plot(Time, CSmales, type = "l", col = rgb(66, 199, 244, 100, maxColorValue = 255), lwd = 2,  xlab = "Day", ylab = "Cumulative survival probability", axes = FALSE, ylim = c(0,1), xlim = c(0,65))
points(Time, CSmales, pch = 16, col = rgb(66, 199, 244, 255, maxColorValue = 255), cex = 1)
lines(Time, s07males, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) # circle
points(Time, s07males, pch = 16, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)
lines(Time, s28males, lty = 1, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, s28males, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 16, cex = 1)
lines(Time, Praislin7611males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7611males, pch = 22, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# square
lines(Time, Praislin7621males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Praislin7621males, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 24, cex = 1)# triangle
lines(Time, ArideA3F311males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, ArideA3F311males, pch = 23, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1) # diamond
lines(Time, Aride3312males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2)
points(Time, Aride3312males, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 25, cex = 1)# upside down triangle  
lines(Time, Mahe13111males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13111males, pch = 4, col = rgb(232, 164, 35, 255, maxColorValue = 255), cex = 1)# X
lines(Time, Mahe13112males, lty = 2, col = rgb(232, 164, 35, 100, maxColorValue = 255), lwd = 2) 
points(Time, Mahe13112males, col = rgb(232, 164, 35, 255, maxColorValue = 255), pch = 3, cex = 1)# +
axis(1, lty=1, at = c(0,5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60), labels = FALSE)
axis(2)


#############################################Circadian Behavior (Rethomics)########################################

#Full Rethomics tutorial @ https://rethomics.github.io/

install.packages("ggpubr", "damr", "ggetho")

DATA_DIR<- "/Users/h703287008/Desktop/Wild_Dsec_MS/Figure_6/" 			#create working directory --> set to path with activity monitor files in it
list.files(DATA_DIR, pattern= "*.txt|*.csv")	#check files in working directory --> make sure they included monitor files
setwd(DATA_DIR) 								#set working directory

library(ggplot2) 
library(damr)		 							#use to read in DAM data
library(ggetho)	 							#use to plot and check data
library(ggpubr)	 							#use to mulitple plot ggplots

####################################################12:12 h LD####################################################

metadata <- fread("metadata_12-12LD_wild_Dsec.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[replicate == "4" & status == "OK"])						#load data into behavior table
summary(dt)

ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho() +
  facet_wrap(~ region_id) +
  stat_ld_annotations(ld_colours =  c("lightyellow", "black"), l_duration = hours(12))

metadata <- fread("metadata_12-12LD_wild_Dsec.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[status == "OK"])						#load data into behavior tablesummary(dt)

DmelCS <- ggetho(dt[xmv(strain) == c("Dmel.CS")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) 
x<-DmelCS$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDmelCS<-max(colMeans(df_x))
DmelCS<- ggetho(dt[xmv(strain) == c("Dmel.CS")], aes(x = t, y = activity/maxDmelCS, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(66, 199, 244, 255, maxColorValue = 255), fill = rgb(66, 199, 244, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(66, 199, 244, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.45, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Dsec07 <- ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) 
x<-Dsec07$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDsec07<-max(colMeans(df_x))
Dsec07 <- ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, y = activity/maxDsec07, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.45, outline  = NA, l_duration = hours(12)) +
  #facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Dsec28 <- ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Dsec28$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDsec28<-max(colMeans(df_x))
Dsec28 <- ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, y = activity/maxDsec28, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Praislin7611 <- ggetho(dt[xmv(strain) == c("Praislin7611")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Praislin7611$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxPraislin7611<-max(colMeans(df_x))
Praislin7611 <- ggetho(dt[xmv(strain) == c("Praislin7611")], aes(x = t, y = activity/maxPraislin7611, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Praislin7621 <- ggetho(dt[xmv(strain) == c("Praislin7621")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Praislin7621$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxPraislin7621<-max(colMeans(df_x))
Praislin7621 <- ggetho(dt[xmv(strain) == c("Praislin7621")], aes(x = t, y = activity/maxPraislin7611, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

ArideA3F311 <- ggetho(dt[xmv(strain) == c("ArideA3F311")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-ArideA3F311$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxArideA3F311<-max(colMeans(df_x))
ArideA3F311 <- ggetho(dt[xmv(strain) == c("ArideA3F311")], aes(x = t, y = activity/maxArideA3F311, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Aride3312 <- ggetho(dt[xmv(strain) == c("Aride3312")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Aride3312$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxAride3312<-max(colMeans(df_x))
Aride3312 <- ggetho(dt[xmv(strain) == c("Aride3312")], aes(x = t, y = activity/maxAride3312, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Mahe13111 <- ggetho(dt[xmv(strain) == c("Mahe13111")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Mahe13111$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxMahe13111<-max(colMeans(df_x))
Mahe13111 <- ggetho(dt[xmv(strain) == c("Mahe13111")], aes(x = t, y = activity/maxMahe13111, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Mahe13112 <- ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Mahe13112$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxMahe13112<-max(colMeans(df_x))
Mahe13112 <- ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, y = activity/maxMahe13112, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(12)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

ggarrange(Dsec07+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Dsec28+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7611+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7621+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), ArideA3F311+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Aride3312+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Mahe13111+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), DmelCS+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          heights = c(3, 3, 3, 3, 3), ncol = 3, nrow = 3)

dt[, MA := ifelse(t %% hours(24) < hours(21), "R", "MA")]
dt[, S := ifelse(t %% hours(24) < hours(18), "R", "S")]

summary_dt <- 
  rejoin(dt[,
            .(
              # this is where the computation happens
              activity_MA = mean(activity[MA == "MA"]),
              activity_S = mean(activity[S == "S"]) 
            ),
            ,by=id])
summary_dt

order<-c("Dsec.07", "Dsec.28", "Praislin7611", "Praislin7621", "ArideA3F311", "Aride3312", "Mahe13111", "Mahe13112")
p<- ggplot(summary_dt, aes(x=factor(strain, level = order), y=activity_MA/max(activity_MA), fill=strain), inherit.aes = TRUE) +
  geom_boxplot(fill= rgb(232, 164, 35, 100, maxColorValue = 255), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = 0.2),alpha=0.3) +
  scale_y_continuous(name= "") + 
  theme_classic() + 
  theme(legend.position = "none")

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(summary_dt[, activity_MA/max(activity_MA)], 
                     summary_dt[, strain], p.adjust = "bonf")


####################################################16:8 h LD####################################################

metadata <- fread("metadata_16-8LD_wild_Dsec.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[replicate == "1" & status == "OK"])						#load data into behavior table
summary(dt)

ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho() +
  facet_wrap(~ region_id) +
  stat_ld_annotations(ld_colours =  c("lightyellow", "black"), l_duration = hours(12))

metadata <- fread("metadata_16-8LD_wild_Dsec.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[status == "OK"])						#load data into behavior table
summary(dt)

DmelCS <- ggetho(dt[xmv(strain) == c("Dmel.CS")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) 
x<-DmelCS$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDmelCS<-max(colMeans(df_x))
DmelCS<- ggetho(dt[xmv(strain) == c("Dmel.CS")], aes(x = t, y = activity/maxDmelCS, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(66, 199, 244, 255, maxColorValue = 255), fill = rgb(66, 199, 244, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(66, 199, 244, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.45, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Dsec07 <- ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) 
x<-Dsec07$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDsec07<-max(colMeans(df_x))
Dsec07 <- ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, y = activity/maxDsec07, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.45, outline  = NA, l_duration = hours(16)) +
  #facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Dsec28 <- ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Dsec28$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxDsec28<-max(colMeans(df_x))
Dsec28 <- ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, y = activity/maxDsec28, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Praislin7611 <- ggetho(dt[xmv(strain) == c("Praislin7611")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Praislin7611$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxPraislin7611<-max(colMeans(df_x))
Praislin7611 <- ggetho(dt[xmv(strain) == c("Praislin7611")], aes(x = t, y = activity/maxPraislin7611, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Praislin7621 <- ggetho(dt[xmv(strain) == c("Praislin7621")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Praislin7621$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxPraislin7621<-max(colMeans(df_x))
Praislin7621 <- ggetho(dt[xmv(strain) == c("Praislin7621")], aes(x = t, y = activity/maxPraislin7611, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

ArideA3F311 <- ggetho(dt[xmv(strain) == c("ArideA3F311")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-ArideA3F311$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxArideA3F311<-max(colMeans(df_x))
ArideA3F311 <- ggetho(dt[xmv(strain) == c("ArideA3F311")], aes(x = t, y = activity/maxArideA3F311, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Aride3312 <- ggetho(dt[xmv(strain) == c("Aride3312")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Aride3312$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxAride3312<-max(colMeans(df_x))
Aride3312 <- ggetho(dt[xmv(strain) == c("Aride3312")], aes(x = t, y = activity/maxAride3312, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Mahe13111 <- ggetho(dt[xmv(strain) == c("Mahe13111")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Mahe13111$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxMahe13111<-max(colMeans(df_x))
Mahe13111 <- ggetho(dt[xmv(strain) == c("Mahe13111")], aes(x = t, y = activity/maxMahe13111, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

Mahe13112 <- ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, y = activity, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6))
x<-Mahe13112$data$activity
df_x <- as.data.frame(matrix(x, ncol = 48,  byrow = TRUE))
maxMahe13112<-max(colMeans(df_x))
Mahe13112 <- ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, y = activity/maxMahe13112, colour = strain), summary_time_window = mins(30), time_wrap = hours(24), time_offset = hours(6)) +
  stat_pop_etho(geom = "bar", colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_summary(geom = "errorbar", fun.data = mean_se, position = "dodge", col = rgb(232, 164, 35, 255, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("yellow", "black"), height = 0.04, alpha = 0.452, outline  = NA, l_duration = hours(16)) +
  # facet_grid(strain ~ .) +
  theme_classic() +
  theme(legend.position = "none") +
  #scale_y_continuous(name= "", breaks = c(0,1,2,3,4)) 
  scale_y_continuous(name= "", breaks = c(0,.25,0.5,0.75,1)) 

ggarrange(Dsec07+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Dsec28+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7611+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7621+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), ArideA3F311+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Aride3312+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Mahe13111+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), DmelCS+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          heights = c(3, 3, 3, 3, 3), ncol = 3, nrow = 3)

x<-read.csv("/Users/h703287008/Desktop/Wild_Dsec_MS/Figure_6/metadata_12-12LD_wild_Dsec.csv", header = TRUE)
p<- ggplot(x, aes(x=Order, y=E168, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = 0.25),alpha=0.3, size = 2) +
  scale_y_continuous(name= "Evening peak time 16:8h LD(hours)", limits = c(10,16), breaks = c(10, 12, 14, 16, 18, 20)) + 
  theme_classic() + 
  theme(legend.position = "none")

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(x$E168, 
                     x$Strain, p.adjust = "bonf")


x<-read.csv("/Users/h703287008/Desktop/Wild_Dsec_MS/Figure_6/Epeak_wildDsec12hLD.csv", header = TRUE)
p<- ggplot(x, aes(x=Order, y=E1212, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = 0.25),alpha=0.3, size = 2) +
  scale_y_continuous(name= "Evening peak time 16:8h LD(hours)", limits = c(10,16), breaks = c(10, 12, 14, 16, 18, 20)) + 
  theme_classic() + 
  theme(legend.position = "none")

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(x$E1212, 
                     x$strain, p.adjust = "bonf")


####################################################DD####################################################

metadata <- fread("metadata_WildDsec_DD.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[replicate == "2" & status == "OK"])						#load data into behavior table
summary(dt)

ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho() +
  facet_wrap(~ region_id) +
  stat_ld_annotations(ld_colours =  c("lightyellow", "black"), l_duration = hours(12))

metadata <- fread("metadata_WildDsec_DD.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[status == "OK"])						#load data into behavior table
summary(dt)

Dsec07<-ggetho(dt[xmv(strain) == c("Dsec.07")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Dsec28<-ggetho(dt[xmv(strain) == c("Dsec.28")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

DmelCS<-ggetho(dt[xmv(strain) == c("Dmel.CS")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(66, 199, 244, 255, maxColorValue = 255), fill = rgb(66, 199, 244, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Praislin7611<-ggetho(dt[xmv(strain) == c("Praislin7611")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Praislin7621<-ggetho(dt[xmv(strain) == c("Praislin7621")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

ArideA3F311<-ggetho(dt[xmv(strain) == c("ArideA3F311")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Aride3312<-ggetho(dt[xmv(strain) == c("Aride3312")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Mahe13111<-ggetho(dt[xmv(strain) == c("Mahe13111")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

Mahe13112<-ggetho(dt[xmv(strain) == c("Mahe13112")], aes(x = t, z=activity), summary_time_window = mins(30), multiplot = 2) +
  stat_bar_tile_etho(colour = rgb(232, 164, 35, 255, maxColorValue = 255), fill = rgb(232, 164, 35, 100, maxColorValue = 255)) +
  stat_ld_annotations(ld_colours =  c("grey", "black"), outline  = NA, l_duration = hours(12), height = .02, alpha = 1) +
  theme_classic()

ggarrange(Dsec07+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Dsec28+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7611+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Praislin7621+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), ArideA3F311+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Aride3312+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), Mahe13111+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), DmelCS+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"),
          ncol = 3, nrow = 3)

#####################################################period analysis#####################################################

metadata <- fread("metadataDDwildDsec.csv")				#read in metadata table --> change to .csv for your experiments
metadata										#check metadata
metadata <- link_dam_metadata(metadata, result_dir = DATA_DIR)	#link metadata to monitorfiles
metadata
dt <- load_dam(metadata[status == "OK"])						#load data into behavior table
summary(dt)

library(zeitgebr)
per_dt <- periodogram(activity, dt, FUN = chi_sq_periodogram, resample_rate = 1/mins(5))
per_dt
ggperio(per_dt, aes(period, power, colour=strain)) + 
  stat_pop_etho() +
  theme_classic()

per_dt <- find_peaks(per_dt)

ggperio(per_dt) + geom_line(aes(group = id, colour=strain))

ggperio(per_dt) + 
  geom_line(aes(group = id, colour = strain)) +
  geom_peak(col = "black") +
  geom_line(aes(y = signif_threshold)) +
  facet_wrap(~ region_id, ncol = 8)

summary_dt <- rejoin(per_dt[peak==1])
summary_dt

x<-cbind(summary_dt$strain, summary_dt$region_id,  summary_dt$period)
x
write.csv(x, "~/Desktop/periods.csv")
x<-read.csv("~/Desktop/periods.csv")
x

pairwise.wilcox.test(x$V3, x$V1, p.adjust.method = "bonferroni")

#            Aride3312 ArideA3F311 Dmel.CS Dsec.07 Dsec.28 Mahe13112 Praislin7611
#ArideA3F311  1.000     -           -       -       -       -         -           
#Dmel.CS      1.000     0.069       -       -       -       -         -           
#Dsec.07      1.000     1.000       0.012   -       -       -         -           
#Dsec.28      1.000     1.000       0.009   1.000   -       -         -           
#Mahe13112    1.000     1.000       0.528   1.000   1.000   -         -           
#Praislin7611 1.000     0.589       0.041   0.797   0.768   0.719     -           
#Praislin7621 1.000     1.000       1.000   0.092   0.077   1.000     0.082     

strain_means <- 
  summary_dt[,
             .(
               # this is where the computation happens
               average_peak = mean(period)/60/60
             ),
             by=strain]

strain_means  
#  ArideA3F311     23.78571
#    Aride3312     23.76667
#    Mahe13112     23.80000
# Praislin7611     23.07143
#      Dsec.28     23.51667
# Praislin7621     24.36667
#      Dsec.07     23.45556
#      Dmel.CS     24.65556

#######################################################Ovariole counts######################################################

x<-read.csv("/Users/h703287008/Desktop/Wild Dsec MS/Ovariole_Count.csv", header = TRUE)

p<- ggplot(x, aes(x=Order, y=Mean.per.ovary, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = 0.25),alpha=0.3, size = 2) +
  scale_y_continuous(name= "Evening peak time 16:8h LD(hours)", limits = c(0,20)) + 
  theme_classic() + 
  theme(legend.position = "none")

ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(x$Mean.per.ovary, 
                     x$Strain, p.adjust = "bonf")

#######################################################Egg size######################################################

x<-read.csv("/Users/h703287008/Desktop/Shahandeh lab/Janpreet - Ovaries/Egg_size.csv", header = TRUE)
x<-read.csv("/Users/h703287008/Desktop/Wild_Dsec_MS/Data files/FigureS3/Egg_size_rep2.csv", header = TRUE)

x
p<- ggplot(x, aes(x=Order, y=V.1.6.3.14159.W.2L, fill=Order), inherit.aes = TRUE) +
  geom_boxplot(fill= c(rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(232, 164, 35, 100, maxColorValue = 255), rgb(66, 199, 244, 100, maxColorValue = 255)), color="black", outlier.colour = NA) +
  geom_point(position=position_jitterdodge(jitter.width = 0.25),alpha=0.3, size = 2) +
  scale_y_continuous(name= "Egg volume (mm^3)", limits = c(0,.1)) + 
  scale_x_discrete(name = "", labels = c("07", "28", "P7611", "P7621", "A3F311", "A3312", "M13111", "CS")) +
  theme_classic() + 
  theme(legend.position = "none")
p
ggarrange(p+ rremove("x.text")+rremove("xlab")+ rremove("y.text")+rremove("ylab"), 
          ncol = 1, nrow = 1)

pairwise.wilcox.test(x$V.1.6.3.14159.W.2L, 
                     x$Strain, p.adjust = "bonf")

