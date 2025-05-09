# NutmegProject

## 📑 목차
- [📌 기획 의도](#-기획 의도)
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

- 회원가입 / 로그인 / 아이디, 비밀번호 찾기
- 동호회 생성 및 관리
- 경기장 및 구장 등록
- 용병 등록 및 매칭
- 동호회 간 매칭 시스템
- 경기장 예약
- 매칭 알림 및 결과 저장 기능

---

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
- 다음 주소 API
- 카카오맵 API

---

---

## 🧾 ERD

![erd](https://github.com/user-attachments/assets/e8aca03a-c73f-48b6-89ac-d32c090f1f98)


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


