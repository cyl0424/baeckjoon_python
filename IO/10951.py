# 두 정수 a, b가 입력될때마다 두 수의 합을 출력

# 참인 동안 계쏙 실행
while True :
  # a, b를 입력받으면 합을 출력
  try :
    a, b = map(int, input().split())
    
    print(a+b)
  
  # 입력 값의 이상이 있을 경우 중단
  except:
    break
