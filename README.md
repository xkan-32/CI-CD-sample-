# CI-CD-sample-
## 概要
CI/CDパイプラインによる自動デプロイ
## Workflow
1. GitHubにpush
2. CircleCIにより以下のパイプライン実行
    1. CloudFormationのテンプレート構文チェック
    2. CloudFormationにより、環境構築
    3. Ansibleにより、アプリケーションデプロイ
    4. ServerSpecにより、接続確認
## 実行環境
### AMI
```
AmazonLinux2 latest
```
### Ruby
```
3.1.2
```
### Rails
```
7.0.4.2
```
### Bundrer
```
latest
```
### Node.js
```
17.9.1
```
### ImageMagic
```
latest
```
### Database
```
MySQL
```
### Storage
```
Amazon S3
```
## 構成図
![lecture13](images/lecture13.svg)