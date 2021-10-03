# List generation
patients = data.frame(name=c("John", "Lucy", "James"), age=c(22,25,20), gender=factor(c("M","F","M")), blood.type=factor(c("A","O","B")))
no.patients = data.frame(day=c(1:6), no=c(50,60,55,52,65,58))

# Simply add data
listPatients = list(patients, no.patients)
listPatients

# Add data by naming each data
listPatients = list(patients=patients, no.patients=no.patients)
listPatients

# Accesss to list elements
listPatients$patients
listPatients[[1]]
listPatients[["patients"]]
listPatients[["no.patients"]]


# Functions useful for List -- lapply, sapply
# lapply: 실행 결과가 list 형태로 출력
#         인자에 따라 값의 길이가 달라도 상관이 없다
# sapply: 연산 결과를 vector 형태로 출력
#         simplify = F이면 lapply와 동일하게 리스트 형태로 결과를 출력

# lapply - getting an average of elements
lapply(listPatients$no.patients, mean)

# lapply, sapply - getting an average of 'patients' elements, Non-numeric forms cannot be obtained average
lapply(listPatients$patients, mean)
sapply(listPatients$no.patients, mean)
sapply(listPatients$no.patients, mean, simplify=F) # Returns the same result as the result in lapply()
