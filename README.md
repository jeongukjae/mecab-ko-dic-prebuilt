# mecab-ko-dic-prebuilt

* mecab-ko-dic bitbucket <https://bitbucket.org/eunjeon/mecab-ko-dic/src/master/>
* mecab-ko-dic 다운로드 페이지 <https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/>

## 사용법

* [노트북 링크](./example-of-mecab-ko-dic-prebuilt--and-mecab-tf.ipynb)

```sh
# mecab-bind 설치, tensorflow ops는 mecab-tf 설치
# 레포지토리: https://github.com/jeongukjae/mecab-bind
pip install mecab-bind

# 미리 빌드된 사전 다운로드
curl -LO https://github.com/jeongukjae/mecab-ko-dic-prebuilt/releases/download/2.1.1-20180720/mecab-ko-dic.zip
unzip mecab-ko-dic.zip
```

```python
>>> import mecab
>>> tagger = mecab.Tagger(mecab.get_model_args("./mecab-ko-dic"))  # 사전 경로 전달
>>> print(tagger.parse("mecab-ko-dic은 MeCab을 사용하여, 한국어 형태소 분석을 하기 위한 프로젝트입니다."))
mecab   SL,*,*,*,*,*,*,*
-       SY,*,*,*,*,*,*,*
ko      SL,*,*,*,*,*,*,*
-       SY,*,*,*,*,*,*,*
dic     SL,*,*,*,*,*,*,*
은      JX,*,T,은,*,*,*,*
MeCab   SL,*,*,*,*,*,*,*
을      JKO,*,T,을,*,*,*,*
사용    NNG,행위,T,사용,*,*,*,*
하      XSV,*,F,하,*,*,*,*
여      EC,*,F,여,*,*,*,*
,       SC,*,*,*,*,*,*,*
한국어  NNG,*,F,한국어,Compound,*,*,한국/NNG/*+어/NNG/*
형태소  NNG,*,F,형태소,Compound,*,*,형태/NNG/*+소/NNG/*
분석    NNG,행위,T,분석,*,*,*,*
을      JKO,*,T,을,*,*,*,*
하      VV,*,F,하,*,*,*,*
기      ETN,*,F,기,*,*,*,*
위한    VV+ETM,*,T,위한,Inflect,VV,ETM,위하/VV/*+ᆫ/ETM/*
프로젝트        NNG,*,F,프로젝트,*,*,*,*
입니다  VCP+EF,*,F,입니다,Inflect,VCP,EF,이/VCP/*+ᄇ니다/EF/*
.       SF,*,*,*,*,*,*,*
EOS

```
