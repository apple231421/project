# JSPBook Project

Eclipse 기반 JSP/Servlet 학습용 웹 애플리케이션입니다.  
Tomcat 10.1 + Java 21 환경에서 동작하며, 요청/응답, 파라미터 처리, 파일 업로드, DB 연동, 폼 검증 등의 예제를 포함합니다.

---

## ⚙️ 개발 환경

- **Language:** Java 21  
- **Server:** Apache Tomcat 10.1  
- **IDE:** Eclipse (WTP)  
- **DB:** MySQL (Connector/J 9.3.0 사용)  
- **Libraries:**
  - `mysql-connector-j-9.3.0.jar` (MySQL DB 연동)
  - `jstl-1.2.jar` (JSTL 지원)
  - `cos2.jar` (파일 업로드 처리)
  - `jakartaee-migration-1.0.9-shaded.jar`

---

## 🚀 실행 방법

1. Eclipse 또는 VS Code에서 프로젝트 import  
2. Tomcat 10.1 런타임 추가 후 서버에 프로젝트 등록  
3. Java 21 JDK 지정  
4. 브라우저에서 아래와 같이 접근
   - `http://localhost:8080/JSPBook/core01.jsp`  
   - `http://localhost:8080/JSPBook/request1.jsp`  
   - `http://localhost:8080/JSPBook/sql01.jsp`  

---

## 💡 주요 학습 포인트

- 요청/응답 처리 및 포워딩
- 폼 파라미터 검증
- 파일 업로드 (COS 라이브러리 사용)
- DB 연동 (MySQL Connector/J)
- JSTL/EL 사용법
- Eclipse + Tomcat 환경 설정
