# rubyカレンダー課題

ターミナルで$calと同じようにカレンダーを表示できるプログラム課題のファイルを作成しました。

ターミナルで以下のコマンドを実行すると、それらのコマンドにあったカレンダーが表記されます。

---

```
#引数を指定しない場合は今年の今月のカレンダーを表示
$ruby calendar.rb -m
```

```
#引数を指定する場合は1~12の間の整数
$ruby calendar.rb -m 1
```

```
#引数に12以上の整数　or　整数以外を入れるとエラーを表示
$ruby calendar.rb -m aaa

## => aaa is neither a month number (1..12) nor a name
```
