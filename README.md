# 로드 밸런서

- [가상 면접 사례로 배우는 대규모 시스템 설계 기초](https://m.yes24.com/Goods/Detail/102819435)

### 개요

가상 면접 사례로 배우는 대규모 시스템 설계 기초책에서 언급된 내용을 토대로 직접 구현해보기

### 기술스택

- springBoot
- docker
- nginx

### nginx 세팅

```
// /etc/nginx/conf.d

upstream myapp1 {
    server {IP}:8000;
    server {IP}:8001;
    server {IP}:8002;
}
server {
    listen 80;

    location / {
        proxy_pass http://myapp1;
    }
}

// 나의 IP 찾기 명령어 : ifconfig | grep inet
// nginx 재실행 명령어 : nginx -s reload
```

### 결과 값 확인

![스크린샷 2024-07-07 오전 12.35.18.png](..%2F..%2F..%2F..%2FDesktop%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202024-07-07%20%EC%98%A4%EC%A0%84%2012.35.18.png)

![스크린샷 2024-07-07 오전 12.39.46.png](..%2F..%2F..%2F..%2FDesktop%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202024-07-07%20%EC%98%A4%EC%A0%84%2012.39.46.png)

![스크린샷 2024-07-07 오전 12.40.33.png](..%2F..%2F..%2F..%2FDesktop%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%2F%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202024-07-07%20%EC%98%A4%EC%A0%84%2012.40.33.png)


