alert :
UIAlertController(title: "창 제목", message: nil OR "메세지 입력", preferredStyle: .alert OR .actionSheet)

UITableViewDataSource : 
해당 프로토콜을 채택하면 numberOfRowsInSection, cellForRowAt 두 개의 메소드 구현이 필수
numberOfRowsInSection
cellForRowAt

dequeueReusableCell :
cell 재활용 > 메모리 아낌, 효율적 사용 가능 
!역할 자세히 알아보기

userDefault 기본 저장소에 데이터 저장/어플을 껐다 켜도 저장되어있음
