library(ggplot2)

df <- TrainingSet_20aimVO
TrainingSet_20aimVO$patientNumber <- sapply(strsplit(TrainingSet_20aimVO$image_filename, "_"), `[`, 3)
TrainingSet_20aimVO$patientNumber <- sapply(strsplit(TrainingSet_20aimVO$patientNumber, "[.]"), `[`, 1)

TrainingSet_20aimVO$imageNumber <- sapply(strsplit(TrainingSet_20aimVO$image_filename, "_"), `[`, 2)

p <- ggplot(df, aes(x=patientNumber))+
     geom_histogram(binwidth = 1)
p

p <- ggplot(df, aes(x=imageNumber))+
     geom_histogram(binwidth = 1)
p



summary(TrainingSet_20aimVO$class_number)

p <- ggplot(TrainingSet_20aimVO, aes(x=class_number))+
     geom_histogram(binwidth = 1)+
     facet_wrap(~patientNumber)
p



###############################


