生成 RSA 私钥
---
```
openssl genrsa -out rsa_private_key.pem 1024
```

生成公钥
---
```
openssl rsa -in rsa_private_key.pem -pubout -out rsa_public_key.pem
```

生成一个证书请求
---
```
openssl req -new -key rsa_private_key.pem -out wenki.com.csr
```

自己签发证书
---
```
openssl x509 -req -days 365 -in wenki.com.csr -signkey rsa_private_key.pem -out wenki.com.crt
```
参考
---
[openssl 生成rsa私钥、公钥和证书](http://www.fzb.me/2015-1-15-openssl-rsa.html)
