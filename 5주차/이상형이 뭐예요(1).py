total_dictionary={}

while True:
    question=input("질문을 입력해주세요: ")
    if question=="q":
        break
    else:
        total_dictionary[question]="" #[]안에 키, ""안에 밸류

for i in total_dictionary:
    print(i)
    answer=input("답변을 입력해주세요: ")
    total_dictionary[i]=answer
    
print(total_dictionary)
