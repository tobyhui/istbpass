Feature: Is it TaoBaoPass yet?
  Everybody wants to know when it's TaoBaoPass
  ​
  Scenario Outline: Text is or is not TaoBaoPass
    Given text is "<content>"
    When I ask whether it's TaoBaoPass yet
    Then I should be told "<is_tbpass>"


    Examples:
      | is_tbpass | content                                                                                                                                             |
      | false     | https://codeleading.com/article/                                                                                                                    |
      | false     | ￥5.55  ￥98                                                                                                                                        |
      | false     | ￥55dsad5  $98                                                                                                                                      |
      | false     | [SftOYhmrepl]                                                                                                                                       |
      | false     | ￥SftOYhmrepl$                                                                                                                                      |
      | false     | ￥G8i ZYgqcoHf￥                                                                                                                                    |
      | true      | ￥G8iZYgqcoHf￥                                                                                                                                     |
      | true      | $2EiVYhmJlSc$                                                                                                                                       |
      | true      | ₳SftOYhmrepl₳                                                                                                                                     |
      | true      | ¢SftOYhmrepl¢                                                                                                                                       |
      | true      | 裤装$2EiVYhmJlSc$2019新款夏₳SftOYhmrepl₳时尚港味高冷御¢SftOYhmrepl¢姐套装女轻熟风气质】，椱ァ製这段ァ描述¢SftOYhmrepl¢后到?◇綯℡寳?￥9tTGYhp336x￥ |
      | true      | 0覆置内容￥k5yBcU0TFzM￥打開τa0寳或点几链街 https://m.tb.cn/h.VzBddSP 至流览器【朗生1.6kg全价真肉粮鳕鱼冻干双拼猫粮增肥发腮成幼猫通用型3.2斤】 |