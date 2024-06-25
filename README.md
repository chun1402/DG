# DG


### 이클립스에 관한 것

**tomcat** = 웹 페이지에 자바 서버 페이지(jsp)를 실행 할 수 있게 만들어 주는 웹 애플리케이션 서버 (가상의 서버)
> ex) http://localhost:8080/WebTEST_1/login.jsp == http://127.0.0.1:8080/WebTEST_1/login.jsp

> http: 브라우저에서 클라(웹)와 서버(톰캣) 사이에 이루어지는 요청을 
> localhost: 자신의 컴퓨터(가상으로 인터넷망에 연결되어 있는 것처럼 할당하는 인터넷 주소)에 
> port: 8080이라는 방 안 (톰캣이 8080번에서 수행되고 있다.)
> WebTEST_1 폴더 안에  
> login.jsp라는 자바 서버 페이지를 찾아서 실행한다.

실행 후 tomcat은 longin.jsp를 클라(웹)에 띄워 응답한다.

Eclipse를 통해 Tomcat에서 실행하는 JSP 파일은 Eclipse 프로젝트 디렉토리 내에 WebContent 디렉토리 (또는 해당 디렉토리의 하위 디렉토리)에 저장
컴파일된 jsp 파일은 기본적으로 Tomcat 환경의 work 폴더에 저장된다. work 폴더 안에 Catalina 하위 폴더에 localhost로 기본 설정된 도메인 이름을 나타내는 하위 폴더가 있다.



### 약자 관련
**localhost** = 자신의 컴퓨터 (가상으로 인터넷망에 연결되어 있는 것처럼 할당하는 인터넷 주소) IP는 127.0.0.1

**host** = 네트워크에서 다른 장치나 서버와 통신할 수 있는 대상을 말하는 것

**port** = “논리적인 접속장소”를 뜻하며, 인터넷 프로토콜인 TCP/IP를 사용할 때 클라이언트 프로그램이 네트워크 상의 특정 서버 프로그램을 지정하는 방법으로 사용한다.

**TCP**: Transmission Control Protocol의 약자 (다른 컴퓨터와 데이터 통신을 하기 위한 다중화 규약의 일종) (OSI 네트워크 계층: 전송 계층)

*프로토콜* = 컴퓨터 내부에서, 또는 컴퓨터 사이에서 데이터의 교환 방식을 정의하는 규칙 체계

**HTTP** (HyperText Transfer Protocol) = 

1. 클라이언트(고객 혹은 의뢰인)와 서버(정보나 서비스를 제공) 사이에 이루어지는 요청/응답(request/response) 프로토콜 
2. 인터넷에서 하이퍼 텍스트(hypertext) 문서를 교환하기 위하여 사용되는 통신 규약 (OSI 네트워크 계층: 응용 계층)

**JSP**: 자바를 기반으로 웹 문서를 동적으로 생성할 수 있는 쉽고 강력한 방법을 제공해주고, 보안성이 뛰어나다. (대규모)
> 서버 사이드 스크립트 언어다. == 해석의 주체가 웹 서버이고, 주로 데이터베이스 서버와 연동하여 동적으로 생성할 수 있는 언어

>  (Tomcat을 Eclipse에서 사용하여 JSP 파일을 실행할 때, 그 JSP 파일은 일반적으로 Eclipse 프로젝트 디렉토리에 저장됩니다. 보다 자세히 설명하자면:
  
>  Eclipse 워크스페이스: Eclipse는 기본적으로 사용자가 지정한 워크스페이스 디렉토리에 프로젝트를 저장합니다. 예를 들어, 워크스페이스가 ~/workspace라면 프로젝트는 ~/workspace/프로젝트명과 같이 저장됩니다.
  
>  Web 콘텐츠 디렉토리: Eclipse 프로젝트 내에서 JSP 파일은 일반적으로 WebContent (또는 WebContent/WEB-INF) 디렉토리에 저장됩니다. 이 디렉토리는 JSP 파일, HTML 파일, CSS, JavaScript 등과 같은 웹 애플리케이션 리소스가 위치하는 곳입니다.
  
>  정확한 위치: WebContent 디렉토리 내에서 JSP 파일의 정확한 위치는 프로젝트 구조 및 JSP 파일이 위치한 곳에 따라 달라집니다. 예를 들어, WebContent 바로 아래에 JSP 파일을 생성했다면 WebContent 아래에 바로 있을 것입니다. 만약 WebContent/jsp와 같은 하위 디렉토리에 위치했다면 해당 디렉토리 안에 있을 것입니다.
  
>  JSP 접근: Eclipse에서 Tomcat을 통해 웹 애플리케이션을 실행할 때, Tomcat은 임시 디렉토리를 사용하여 애플리케이션을 배포합니다. JSP 파일은 이 배포된 위치에서 Tomcat에 의해 제공됩니다. Eclipse에서는 이 임시 디렉토리에 직접적으로 프로젝트 디렉토리 내에 저장된 JSP 파일을 배치하지 않습니다.
  
>  요약하면, Eclipse를 통해 Tomcat에서 실행하는 JSP 파일은 Eclipse 프로젝트 디렉토리 내에 WebContent 디렉토리 (또는 해당 디렉토리의 하위 디렉토리)에 저장됩니다.)

**IP**: 인터넷 프로토콜의 약자 (정보를 주고 받는 데 사용하는 정보 위주의 규약) (OSI 네트워크 계층: 네트워크 계층)

**공인 IP (public IP)**: 외부에 공개되어 있는 IP 주소 (인터넷 서비스 공급자가 제공하는 IP주소, 인터넷이 사용자를 찾을 수 있도록 사용자를 식별하는 역할) 외부 혹은 실제 다른 컴퓨터와 통신할때 쓴다.
> 공인 IP는 전세계에서 유일한 IP 주소를 갖는다.
> 할당 대상: 개인 또는 회사의 서버(라우터)

**사설 IP (Private IP)**: 내 컴퓨터에서 사용하는 로컬IP
> 할당 대상: 개인 또는 회사의 기기
> [라우터나 공유기가 있으면 공인 IP를 사설IP로 변환]


**dns**: (Domain Name System)의 약자 (OSI 네트워크 계층: 응용 계층)
> ex) naver.com or google.com과 같은 도메인 이름을 입력하면 DNS 해당 사이트의 올바은 IP 주소를 찾는 역할 

**Domain name**: 인터넷 상에서 컴퓨터, 네트워크 서비스, 웹 사이트 등을 식별하기 위한 주소체계이다. 
> ex) www == 서브 도메인 naver == Second-level domain .com == Top-level domain


http://localhost:8080/WebTEST_1/login.jsp 를 dns로 나타낼때는 

> 프로토콜 (Protocol): "http"는 사용되는 프로토콜을 나타냅니다. HTTP(HyperText Transfer Protocol)는 웹 브라우저와 웹 서버 간의 데이터 전송을 위한 표준 프로토콜입니다.

> 호스트 (Host): "localhost"는 도메인 이름이나 IP 주소를 나타냅니다. 여기서 "localhost"는 특수한 경우로, 컴퓨터 자기 자신을 가리키는 표준 호스트 이름입니다. 일반적으로 "localhost"는 로컬 머신을 의미하며, 자신의 컴퓨터에서 서버를 실행하고 있는 경우에 사용됩니다.

> 포트 번호 (Port Number): ":8080"은 웹 서버가 사용하는 포트 번호입니다. HTTP 프로토콜에서 기본 포트는 80이지만, 여기서는 8080 포트를 명시적으로 지정하여 웹 서버가 이 포트에서 요청을 처리하도록 합니다.

> 경로 (Path): "/WebTEST_1/login.jsp"는 웹 서버 내에서 요청된 리소스의 경로를 나타냅니다. 여기서 "/WebTEST_1"은 웹 애플리케이션의 경로이며, "/login.jsp"는 웹 애플리케이션 내의 특정 페이지나 리소스의 이름입니다.

> 이 구조를 DNS 관점에서 보면, "localhost"는 호스트 이름이고, 포트 번호는 "8080"입니다. DNS는 호스트 이름을 IP 주소로 해석하여 네트워크 통신을 가능하게 합니다. "WebTEST_1"은 경로의 일부로, 웹 애플리케이션의 이름이며, "login.jsp"는 해당 웹 애플리케이션 내의 특정 페이지를 가리킵니다.





