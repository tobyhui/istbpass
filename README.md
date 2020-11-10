# is-tbpass

Verify whether the text contains Taobao passphrase, or a Taobao passphrase like message key

初步验证文本是否包含淘口令，或类淘口令信息密钥 for CommonJS

## Installing

Using npm:

```bash
$ npm install is-tbpass
```

Using yarn:

```bash
$ yarn add is-tbpass
```


## Example

### note: CommonJS usage

```js
const { isTBPass } = require('is-tbpass')

// true
console.log(isTBPass("裤装$2EiVYhmJlSc$2019新款夏"))
```

```js
const { getTBPass } = require('is-tbpass')

// ¢SftOYhmrepl¢
console.log(getTBPass("椱ァ製这段ァ描述¢SftOYhmrepl¢后到?◇綯℡寳"))
// $2EiVYhmJlSc$,₳SftOYhmrepl₳
console.log(getTBPass("裤装$2EiVYhmJlSc$2019新款夏₳SftOYhmrepl₳时尚"))
```