# DG


tomcat = 웹 페이지에 자바 서버 페이지(jsp)를 실행 할 수 있게 만들어 주는 웹 애플리케이션 서버 (가상의 서버)

ex) http://localhost:8080/WebTEST_1/login.jsp == 
http: 브라우저에서 클라(웹)와 서버(톰캣) 사이에 이루어지는 요청을 
localhost: 자신의 컴퓨터(가상으로 인터넷망에 연결되어 있는 것처럼 할당하는 인터넷 주소)에 
port: 8080이라는 방 안 
WebTEST_1 폴더 안에  
login.jsp라는 자바 서버 페이지를 찾아서 실행한다.

실행 후 tomcat은 longin.jsp를 클라(웹)에 띄워 응답한다.

localhost = 자신의 컴퓨터 (가상으로 인터넷망에 연결되어 있는 것처럼 할당하는 인터넷 주소)

port = “논리적인 접속장소”를 뜻하며, 인터넷 프로토콜인 TCP/IP를 사용할 때 클라이언트 프로그램이 네트워크 상의 특정 서버 프로그램을 지정하는 방법으로 사용한다.

IP: 인터넷 프로토콜의 약자 (정보를 주고 받는 데 사용하는 정보 위주의 규약) (OSI 네트워크 계층: 네트워크 계층)

TCP: Transmission Control Protocol의 약자 (다른 컴퓨터와 데이터 통신을 하기 위한 다중화 규약의 일종) (OSI 네트워크 계층: 전송 계층)

프로토콜 = 컴퓨터 내부에서, 또는 컴퓨터 사이에서 데이터의 교환 방식을 정의하는 규칙 체계

HTTP = 클라이언트(고객 혹은 의뢰인)와 서버(정보나 서비스를 제공) 사이에 이루어지는 요청/응답(request/response) 프로토콜



(Tomcat을 Eclipse에서 사용하여 JSP 파일을 실행할 때, 그 JSP 파일은 일반적으로 Eclipse 프로젝트 디렉토리에 저장됩니다. 보다 자세히 설명하자면:

Eclipse 워크스페이스: Eclipse는 기본적으로 사용자가 지정한 워크스페이스 디렉토리에 프로젝트를 저장합니다. 예를 들어, 워크스페이스가 ~/workspace라면 프로젝트는 ~/workspace/프로젝트명과 같이 저장됩니다.

Web 콘텐츠 디렉토리: Eclipse 프로젝트 내에서 JSP 파일은 일반적으로 WebContent (또는 WebContent/WEB-INF) 디렉토리에 저장됩니다. 이 디렉토리는 JSP 파일, HTML 파일, CSS, JavaScript 등과 같은 웹 애플리케이션 리소스가 위치하는 곳입니다.

정확한 위치: WebContent 디렉토리 내에서 JSP 파일의 정확한 위치는 프로젝트 구조 및 JSP 파일이 위치한 곳에 따라 달라집니다. 예를 들어, WebContent 바로 아래에 JSP 파일을 생성했다면 WebContent 아래에 바로 있을 것입니다. 만약 WebContent/jsp와 같은 하위 디렉토리에 위치했다면 해당 디렉토리 안에 있을 것입니다.

JSP 접근: Eclipse에서 Tomcat을 통해 웹 애플리케이션을 실행할 때, Tomcat은 임시 디렉토리를 사용하여 애플리케이션을 배포합니다. JSP 파일은 이 배포된 위치에서 Tomcat에 의해 제공됩니다. Eclipse에서는 이 임시 디렉토리에 직접적으로 프로젝트 디렉토리 내에 저장된 JSP 파일을 배치하지 않습니다.

요약하면, Eclipse를 통해 Tomcat에서 실행하는 JSP 파일은 Eclipse 프로젝트 디렉토리 내에 WebContent 디렉토리 (또는 해당 디렉토리의 하위 디렉토리)에 저장됩니다.)
