Feature: カウンターの表示と加算
  利用者として、ボタンを押した回数を画面で確認したい。

  Scenario: 起動時にカウンターの初期値を表示する
    Given The app is running
    Then I see {'Flutter Demo Home Page'} text
    And I see {'You have pushed the button this many times:'} text
    And I see {'0'} text

  Scenario: 加算ボタンを押すとカウンターが増える
    Given The app is running
    When I tap {Icons.add} icon
    Then I see {'1'} text

  Scenario: 加算ボタンを続けて押すと押した回数だけ増える
    Given The app is running
    When I tap {Icons.add} icon
    And I tap {Icons.add} icon
    Then I see {'2'} text
