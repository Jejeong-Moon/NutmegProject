# NutmegProject

## 📑 목차
- [📌 기획 의도](#-기획-의도)
- [🔑 주요 기능](#-주요-기능)  
- [🛠️ 기술 스택](#️-기술-스택)  
- [🧾 ERD](#-erd)  
- [🧾 추가자료](#-추가-자료)  

---

## 📌 기획 의도

**기획 의도**

저는 이 프로젝트를 단순한 기능 구현 과제가 아닌,  
**실제로 내가 쓰고 싶고, 현업에서도 적용해보고 싶은 서비스**를 만든다는 마음으로 접근했습니다.  
실제 사용자(개인, 동호회 운영자, 관리자)의 흐름을 고려한 구조 설계와  
각 역할에 맞는 기능 구성을 통해, 현실적인 문제를 기술로 풀어보는 경험을 하고 싶었습니다.

"이런 과정을 하나의 시스템으로 통합하면 얼마나 편할까?"  
라는 생각에서 출발해, 이 프로젝트를 기획하게 되었습니다.

넛맥은 “경기 참여 → 팀 활동 → 경기 결과 기록”까지 **풋살의 모든 흐름**을 웹에서 처리할 수 있도록 구성되었습니다.

- 개인은 간단히 회원가입 후 용병 신청 또는 동호회 가입 신청 가능
- 운영자는 경기장을 등록하고, 팀원을 모집하거나 상대 팀과 매칭 가능
- 관리자는 전체 서비스 흐름을 승인·차단·통계 등으로 관리 가능

기획 단계부터 실제 운영까지 고려한 플랫폼으로,  
사용자, 운영자, 관리자가 자연스럽게 연결되는 구조를 설계하고 구현했습니다.

 📅 개발 일정

- **03.20 ~ 03.31** : 기획, 명세서, 유스케이스 등 작성
- **04.01 ~ 04.21** : 주요 기능 구현
- **04.22 ~ 04.25** : 코드 리팩토링 및 마무리

---

## 🔑 주요 기능

### 📝 회원가입
- 이름, 이메일, 비밀번호, 주민번호, 주소 등을 입력해 가입할 수 있다.
- 이메일,닉네임은 중복 검사를 통해 유일하게 유지된다.
- 가입 시 관계형 데이터 베이스를 활용하여 유저 PrimaryKey와 유저정보 PrimaryKey 등록되어
  데이터 영속성을 확보해 후처리(통계/복구)에 유연하게 대응하도록 설계.

### 🔐 로그인
- 회원가입 시 입력한 이메일과 비밀번호로 로그인 가능하다.
- 회원가입, 로그인 화면을 제외한 모든 기능은 로그인 후에만 접근 가능하다.

### 🏃 동호회 생성 및 가입
- 사용자는 임시 동호회를 생성할 수 있다.
- 다른 사용자는 생성된 임시 동호회에 가입 신청할 수 있고, 동호회장의 승인을 통해 팀원이 된다.
- 팀원이 4명 이상 승인되면 정식 동호회로 자동 승격된다 (트리거 동작).

### 👥 팀 관리
- 팀장은 팀원 목록을 확인하고, 설명이나 엠블럼을 수정할 수 있다.
- 팀원에 대해 승인/강퇴 등의 조치를 할 수 있다.

### 🏟️ 경기장 및 구장 등록
- 운영자는 경기장을 등록할 수 있으며, 관리자가 승인 후 사용 가능하다.
- 경기장에는 주소, 상세주소, 가격, 가로/세로 길이, 시설 옵션 등이 포함된다.
- 등록된 경기장은 사용자들이 예약할 수 있다.

### 📆 경기장 예약
- 사용자는 원하는 날짜와 시간대를 선택해 경기장을 예약할 수 있다.
- 한 번에 여러 시간대를 연속으로 예약할 수 있으며, 이미 예약된 시간은 선택할 수 없다.
- 예약 후 운영자가 예약을 승인하면 확정된다.

### 🧍 용병 시스템
- 팀에 속하지 않은 개인도 ‘용병’으로 경기에 참여할 수 있다.
- 용병 게시판에 글을 올려 용병을 지원하고 동호회장은 인원에게 용병 요청을 할 수 있다.

### ⚔️ 동호회 간 매칭
- 정식 등록된 동호회 간 매칭을 요청하고 수락할 수 있다.
- 매칭이 확정되면 경기 일정과 장소가 자동으로 설정된다.
- 경기가 끝난 뒤에는 경기 결과를 입력해 승/패 기록이 저장된다.

### 🔔 알림 기능
- 예약 승인, 가입 승인, 매칭 수락 등 주요 이벤트 발생 시 알림이 표시된다.
- 로그인 후 헤더에서 확인 가능하며, 알림 개수도 함께 표시된다.


## 🛠️ 기술 스택

🎨 Front-End

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![AJAX](https://img.shields.io/badge/AJAX-007FFF?style=for-the-badge&logo=fastapi&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)
![JSON](https://img.shields.io/badge/JSON-000000?style=for-the-badge&logo=json&logoColor=white)

🧩 Back-End

![Java](https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white)
![Spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![MyBatis](https://img.shields.io/badge/MyBatis-000000?style=for-the-badge&logo=mybatis&logoColor=white)
![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-00599C?style=for-the-badge&logo=java&logoColor=white)
![Servlet](https://img.shields.io/badge/Servlet-6E4C13?style=for-the-badge&logo=java&logoColor=white)
![JDBC](https://img.shields.io/badge/JDBC-007396?style=for-the-badge&logo=java&logoColor=white)

⚙️ Build & Server

![Apache Tomcat](https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black)
![Eclipse IDE](https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=eclipseide&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

<!--
### 📱 어플리케이션
- Java
- JSP (Java Server Pages)
- Servlet
- HTML5 / CSS3 / JavaScript
- jQuery / AJAX

### 🧩 Database
- Oracle
- JDBC(Java Database Connectivity)
- MyBatis(SQL Mapper Framework)

### 🧾 주요 라이브러리
- Spring Framework
- MyBatis (SQL 매핑)
- jQuery (DOM 조작 / AJAX 통신)
- Daum 주소 API (우편번호 검색)

### ☁️ 서버
- Apache Tomcat 8.x
-->
### 🧑‍💻 개발 환경
- SpringFramework 5.3.34
- JDK 1.8+

### 🔗 외부 API
- 다음 우편번호 서비스 API
- 카카오 지도 WEB API

---
### 📱 스크린샷
- 메인페이지
![메인페이지](https://github.com/user-attachments/assets/758d3578-4afb-4fe3-8b4e-05192bc051ec)

- 로그인 필요 화면
![메인페이지 로그인 필요 화면](https://github.com/user-attachments/assets/c97c432d-2984-45ec-8f5d-77aaf990eb66)

- 회원가입 중복 체크 기능 <br>
이메일과 닉네임에 중복을 체크하며 비밀번호(최소8자리) 조건을 충족 해야하고 비밀번호 확인에서 같은 비밀번호가 아닐시 다르다고 표현
![회원가입 중복체크](https://github.com/user-attachments/assets/17cc19b9-06d4-4c5e-b8d1-1e162485dd6e)


- 주민번호 유효성 검사 및 회원가입 완료
![회원가입 완료](https://github.com/user-attachments/assets/367e26dd-df5d-4054-9297-1d4258882a7f)

- 회원 메뉴표시
![회원 메뉴 표시](https://github.com/user-attachments/assets/b0a8b2d0-a279-46f2-ab14-56753a614371)
![사용자 메뉴 표시](https://github.com/user-attachments/assets/6e88344b-bde7-4a86-b8b1-3b8da04aa0f8)

- 동호회 개설
![동호회 개설](https://github.com/user-attachments/assets/0991e585-25e2-4f0c-ac68-a62202faaf5b)

- 동호회 메인 페이지
![동호회 메인 페이지](https://github.com/user-attachments/assets/f9befd15-6501-41b4-a65d-12fdd650cfac) 
![동호회 페이지 최초 화면](https://github.com/user-attachments/assets/c23396ce-99c8-4824-bbb8-c3e42807dee2)
(임시 동호회는 가계부, 매칭을 사용할 수 없습니다)

- 임시 동호회 해체
![동호회 해체](https://github.com/user-attachments/assets/12baf565-6aa4-4c20-968a-e92a8356d16a)


- 동호회 가입 신청
![동호회 가입신청](https://github.com/user-attachments/assets/39dd34b7-711e-473a-990e-f457e5b13477)

- 알람 읽기,삭제 기능
![알람 기능 읽기,삭제](https://github.com/user-attachments/assets/baed6cb4-4fb6-460d-a185-98cee637c293)


- 상대편 매치 신청
![상대편 매치 신청](https://github.com/user-attachments/assets/02187198-9d50-434c-883d-831e39e7a58d)

- 매치 방장의 참가인원 모집, 모집인원 확인, 결제 승인 (경기 확정)
![매치에 대한 매치 방장의 참가 인원모집, 수락, 결재 승인](https://github.com/user-attachments/assets/d2db941a-391d-4462-b532-c1bb397b86a5)

- 매치 확정 이후 가계부
 ![경기 승인 이후 가계부 현황](https://github.com/user-attachments/assets/37658d6d-1fc1-41ea-9de9-de6bfb8031d8)

- 가계부 회비 모으기 기능 (일반 회원은 글쓰기 기능이 없고 납부 기능만 사용 가능)
![가계부 회비 모으기](https://github.com/user-attachments/assets/17d11486-98af-4bf6-90ce-606bf73a67d2)


- 운영자 메인 페이지
![운영자 메인페이지](https://github.com/user-attachments/assets/a9dcdc96-296f-459c-b2d0-f7589dceed91)
![운영자페이지소개](https://github.com/user-attachments/assets/e5f6e6a6-c0a0-4b5b-860a-127e4c5ceca2)

- 경기장 승인 반려
![운영자 경기장 승인 반려](https://github.com/user-attachments/assets/0daf60d5-f16f-44d5-9bb3-5b23a81cbbe2)

- 운영자 벤, 해제 기능
![운영자 사용자 차단 해제](https://github.com/user-attachments/assets/a1f65cda-14fb-42c1-841c-bfd6135b53e5)

- 운영자 유저 탈퇴 기능
![운영자 사용자 삭제](https://github.com/user-attachments/assets/6e66a1be-414d-4db5-a42b-09287a9ec7d9)


- 구장운영자 페이지 <br>
구장,경기장에 대한 수정,삭제 기능 구현
![오퍼레이터 페이지 소개](https://github.com/user-attachments/assets/2e4e5aef-ad03-4ca9-876a-09538eae01d8)

- 구장 수정 기능 (경기장도 동일하게 구현)
  ![구장 정보 수정](https://github.com/user-attachments/assets/0f84a53b-89fd-4912-a34c-1307f3d969db)

- 사용자의 신청에 대한 승인,반려 처리
![오퍼레이터 승인,반려](https://github.com/user-attachments/assets/059ef374-6bc1-4057-8adf-dc1e5da1b21c)


- 승인 이후 페이지 변화 체크
![오퍼레이터 승인 이후 대시보드 변화](https://github.com/user-attachments/assets/fcc362fb-656a-4282-b059-1eb56d9775eb)



---

## 🧾 ERD

![erd](https://github.com/user-attachments/assets/9bca468a-02cf-4bab-ab69-4e597626c737)



---
## 🧾 추가 자료

<details>
<summary>📄 유스케이스 다이어그램 보기 (클릭해서 펼치기)</summary>

<br>

<img src="https://github.com/user-attachments/assets/c117d097-6eb5-448a-abc0-3113ef3de253" alt="유스케이스 다이어그램" width="100%"/>

</details>

<details>
<summary>📄 요구사항 정의서 보기 (클릭해서 펼치기)</summary>

<br>

<img src="https://github.com/user-attachments/assets/eb01684e-faf7-4456-883a-f66b3ae99234" alt="유스케이스 다이어그램" width="100%"/>

</details>

<details>
<summary>📄 테이블 명세서 보기 (클릭해서 펼치기)</summary>

<br>
[주요 테이블 명세서_2team.pdf](https://github.com/user-attachments/files/20189166/_2team.pdf)



</details>


