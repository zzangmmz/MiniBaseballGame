# ⚾️ 숫자 야구 게임

프로젝트 소개
------------
- Command Line Tool에서 숫자 야구 게임 구현.
- 프로그램이 생성한 랜덤 3자리 숫자를 유저가 맞히는 게임.
- 오답일 경우 힌트를 제공해 정답을 맞힐 때까지 실행.
- 게임 기록 보기 가능.

개발 기간
------------
2024.11.07~2024.11.08


개발 환경
------------
`xCode` `Swift6` `UIKit` `Command Line Tool`



협업 툴
------------
![github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)


실행화면
------------

| 첫 화면 | 게임 시작하기 |
| --- | --- |
|![스크린샷 2024-11-07 오전 10 31 57](https://github.com/user-attachments/assets/28130776-7da1-4b00-8089-01e5c6a20610)|![스크린샷 2024-11-07 오전 10 45 25](https://github.com/user-attachments/assets/f91ed915-96a2-4d30-81ae-c12eab31522d)|

| 게임 기록 보기 | 종료하기 |
| --- | --- |
|![스크린샷 2024-11-07 오전 10 45 32](https://github.com/user-attachments/assets/22587540-9f46-4d36-b052-07343f65b686)|![스크린샷 2024-11-07 오전 10 33 32](https://github.com/user-attachments/assets/b219c338-c6ca-4ece-b703-8a55934dd47f)|


트러블 슈팅
-------------

|문제 상황 | '게임 기록 보기' 선택 시 런타임 오류 발생 |
| --- | --- |
| 구현하고자 했던 부분 |게임 기록 출력|
| 발생한 이슈 |게임 기록이 없는 경우 런타임 오류 발생|
| 원인 |딕셔너리가 비어있는데 키, 밸류값에 접근|
|해결 방법|게임 기록 딕셔너리가 비어있을 경우 에러 처리로 안내 문구 출력|
|실행 결과|![](https://velog.velcdn.com/images/myungjilee/post/a8a3cd9f-8a4e-4e99-a5b2-e6c0969fdcc8/image.png)|



커밋 컨벤션
-------------
- feat : Screen, Component, 기능 추가 및 수정 (큰 변경사항 위주) / 이미지 추가
- update : 간단한 변경 사항
- refactor : 코드 정리 및 단순화 / 간단한 스타일 수정 / 폴더 및 파일 이름이나 위치 변경 / 주석 및 콘솔 관리 / fontello 변경
- fix : 버그 수정
- delete : 폴더, 파일 삭제
- docs : 문서 추가, 수정, 삭제 (ex. README.md)
- test : 테스트 코드 작성, 수정, 삭제
- chore : 패키지/라이브러리 추가, 버전 변경, 삭제
