p "1------------------"
#rubyの基礎,プログラムの復習
#表示
p "こんにちは" #こんにちは

p "2------------------"
#変数(値を入れてみる)
num1=1
p num1   #1
#変数名の先頭に数字はダメ
#1num=1(ダメな変数名例)

p "3------------------"
#計算
num2=2
p num1+num2 #3
#文字連結
a="Ruby"
b="学習"
p a+b #Ruby学習

p "4------------------"
#変数展開
#文字列に変数を埋め込む(#{変数}ダブルクォーテーションの中のみ有効)
#シングルクォーテーションの場合#{}はそのまま出力される
x=100
y=1000
z="Ruby"
p "#{z}を学ぶ為には#{x}回理解するには#{y}回の修業が必要だ"

p "5------------------"
#比較
p 1==1  #true(bool型)
p 1==2  #false(bool型)
p 1<2   #1より２が大きいか
p 1<=2  #1は2以下か
p 1!=2  #1は2と異なるか

p "6------------------"
#if文(条件分岐)
#↓書き方
#if 条件式
    #trueの場合の処理
#elseif 追加の条件
    #elseifがtrueの場合の処理
#else 
    #条件式がfalseの時
#end
Score=90
if Score>=70
    p "合格です"
elsif Score>=60
    p "もう少し頑張りましょう"
else
    p "不合格です"
end

p "7------------------"
#条件式の組み合わせ(AND条件)
#全ての条件を満たしている時true
Z=1
p Z<=1 && Z<10 #tureならtrue それ以外はfalse
#条件式の組み合わせ(OR条件)
#どれか1つの条件を満たしている時true
p Z<3 || Z<=10
#if文の中にif文を書く事をネストと言う

p "8------------------"
#配列
[] #空の配列
["Ruby","C","C#"] #文字列の配列
[1,2,3,4,5] #数値の配列
#インデクス(先頭から0,1,2..と番号が割り当てられる)
arr=["Ruby","C","C#"]
#配列の要素の取り出し(配列に格納した値の事を要素と言う)
p arr[0] #Ruby
p arr[1] #C
p arr[2] #C#
p arr[100] #存在しないインデクス番号を指定した場合nilと返って来る。他言語のnullと同じ

p "9-------------------"
#ハッシュ(要素一つ一つに好きな名前をつけて管理できる。名前の事をkeyと言う)
arr = {"key1"=>"Ruby","key2"=>"C","key3"=>"C#"}
p arr["key1"] #Ruby

p "10------------------"
#シンボル(文字列を省略した書き方""を:にする事)
#ハッシュに格納する値には使えない
arr = {:key1=>"Ruby",:key2=>"C",:key3=>"C#"}
p arr[:key1] #Ruby
#シンボルの=>の省略刑(シンボルのコロンを後ろに持っていくと=>が省略出来る)
#省略形(意味は変わらない)
{key1:"Ruby",key2:"C",key3:"C#"}
p arr[:key2] #C
#多次元配列(配列の中に配列)
[[1],[2]]
#配列の中にハッシュ
[{key1:"Ruby"}]
#ハッシュの中に配列
{key1:[1]}

p "11------------------"
#配列のループ処理
#配列の要素を一つずつ取り出して処理
#↓書き方
#配列.each do |変数名|
    #ループ処理
#end
program=["Ruby","C","C#"]
program.each do |lang|
    p lang
    end
#Ruby
#C
#C#
p "12-------------------"
#ハッシュのループ処理
program={Key1:"Ruby",Key2:"C"}
program.each do |key,val| #keyにハッシュのキー(Key1)が,valにはハッシュの値(Ruby)が代入される
    p "#{key}は#{val}です"
end
p "13-------------------"
#next(ループ処理のスキップ)
arr = ["Ruby","PHP","Python"]
arr.each do|lang|
    next if lang=="PHP" #if文の条件式がtrueだった時nextを実行するという意味
    p lang   #nextが実行された場合この処理がスキップされ次のループ処理にいく
end
#Ruby
#Python
p "14-------------------"
#メソッド(関数)
#メソッドとは処理のまとまりの事
#呼び出されるまで実行されない
def study(lang) #defはメソッドを作る時に使うもの,studyはメソッド名,langは引数
    p "#{lang}入門"
    p "#{lang}講座"
end
#メソッドの呼び出し
study("Ruby")#引数langにRubyという文字列を代入している,メソッド名を書くとメソッドを呼び出せる
study("C")
p "15--------------------"
#メソッドの引数
def ask #引数なし ask()のように空のカッコはRubyでは必要ない
    p "Rubyを学習中です"
end

def say_age(me,age)#,で区切ると複数の引数を持たせることが出来る
    p "#{me}は#{age}歳です"
end

ask #呼び出しの場合も同様に空のカッコは不要
say_age("私",20)#呼び出し側も同様,で区切ると複数の引数を持たせる事が可能
p "16---------------------"
#引数のデフォルト値(指定が何もなかった場合に採用される値)
def sayage(me="私",age=20)
    p "#{me}は#{age}歳です"
end
sayage #私は20歳です
sayage("君",20)#私は20歳です#指定された値がある
p "17---------------------"
#キーワード引数
#引数に名前をつける機能
def say_age(age:20)
    p age
end
say_age(age:10)#10 #キーワード今回の場合ageを書く事で引数の意味が視覚的にわかりやすくなる
say_age #20
p"18-----------------------"
#可変長引数
#1つの引数で複数の値を配列で受け取る事が出来る
def price(*i) #アスタリスク記号をつける事で可変長引数になる
    p i #[1,2,3] 可変長引数のiは配列で1,2,3を受け取る
end
price(1,2,3)
p "19----------------------"
#オプション引数
#1つの引数で複数の値をハッシュで受け取る
def price(**i) #アスタリスクを2つつけるとオプション引数になる
    p i #{:item1=>100, :item2=>150}
end
price(item1:100,item2:150) #キーワードつきで引数を指定する
p "20-----------------------"
#return
#returnが実行されるとその場でメソッドの処理が終了する
#メソッドの呼び出しもとに値を返す事が出来る
def price(age)
    if age>=20 #引数ageが20以上だった時return大人料金が実行される
        return "大人料金" #大人料金という文字列が戻り値として返される
    else
        return
    end
end
res=price(20) #戻り値として返された文字列がresに代入される
p res#大人料金
p "21-----------------------"
#暗黙的な戻り値
#Rubyは最後に処理した値を暗黙的に戻り値とするルールがある
#パターン1
def calc(i)
    i=i+2 #3になる
    return i #変数iをreturnで戻す
end
p calc(1)#戻り値は3
#パターン2
def calc(i)
    i=i+2
    i #Rubyが最後に処理した値3を暗黙的に戻り値とします
end
p calc(1) #3
#パターン3
def calc(i)
    i+2 #i+2は3でこれが最後の処理になるので戻り値とする
end
p calc(1)#3
p "22(20のコードに暗黙的な戻り値を考慮した書き方に修正)"
def price(age)
    if age >=20
        "大人料金"
    end
end
p price(20)
p "23(22のコードをさらに短く書く方法)"
#Rubyはif文を1行で書く事が出来る
def price(age)
    "大人料金"if age>=20 #条件式がtrueの場合のみこの行を実行する
end
p price(20)
p "24-----------------------"
#unless
#ifの逆 falseなら実行される
def price(age)
    unless age >=20
    "未成年です" #ageが20以上でなければ実行される
    end
end
p price(19)
#未成年です
def price(i)
p "数値ではありません"unless i.instance_of(Integer)#1行でも書ける行の末尾にunlessを書く
end
#iが整数でなければfalseを返すメソッドでfalseなのでpが実行される
p "25-----------------------"
#例外(Exception)
#例外とは想定外のエラーの事
#fail()またはraise()で発生させる
#fail()の代わりにraise()を使う事も出来る
#failは例外を発生させる時に使う事が好ましい
#raiseはキャッチした例外を再び投げる時に使うのが好ましい
#fail(エラーメッセージ)条件
#例-------------------------------
# def calc_tax(i)
     #fail("数値を指定してください")unless i.instance_of?(Integer)#引数が数値でなければ例外発生
     #i*1.1
# end
# p calc_tax("a")#iにaがセットされ例外が実行され↓の処理は実行されない
# p calc_tax(1)#今回はこの行は↑の行の影響で実行されない
p "26-------------------------"
#例外をキャッチする
#例--------------------------------
# def calc_tax(i)
#    fail("数値を指定してください") unless i.instance_of?(Integer)
#    i*1.1
# end
# begin #beginとrescueの間に例外が発生するかもしれない処理を書く
#    p calc_tax("a")#今回はここで文字列を渡しているので例外が発生しrescueにとぶ
#    p calc_tax(1)#今回はここは実行されない
# rescue =>e#例外を捕まえる事をキャッチすると言う
#    p e.message#エラーメッセージを表示する
#    p e.backtrace#どのコードの何行目がエラーか表示する
#    raise e #キャッチした例外を再びrescueの外に投げたいと気にraiseを使う
# end
# p calc_tax(2)#rescueの処理が全て終わったあとにendの外にあるこの行が実行される
p "27---------------------------"
#ensure
#例外が発生してもしなくてもいずれにせよ必ず実行したい処理がある時に使う
begin
    p calc_tax("a")
rescue=>e
    p e.message
ensure
    p "例外が発生してもしなくても最後に実行される"
end
p "28-----------------------------"
#特定のエラーをキャッチ
def div(i)
    fail("数値を入力してください") unless i.instance_of?(Integer)#数値以外をiにいれた時はここ
    1/i#Rubyでは0で割り算をしようとするとZeroDivisionErrorが発生する
end
begin
    p div(0)
rescue ZeroDivisionError=>e#特定のエラーを指名してキャッチする事が出来る(ZeroDivisionError)
    p "0で割り算出来ません"
rescue=>e#rescue ZeroDivisionErrorじゃないとき
    p e.message
end
p "29-------------------------------"
#メソッド全体に例外をキャッチ
#def div(i)
    #1/i
#rescue=>e#この書き方の場合beginは書かない
#end
p "30--------------------------------"
#クラス
#クラスを使うと変数やメソッドを1つにまとめる事が出来る
#クラスを使う時はclass クラス名(大文字で始める) とかく最後にend
#@つきの変数の事を属性またはメンバ変数と呼ぶ
class Dog
    def initialize(name,weight)#メソッド名前や体重を引数で受け取る
        @name=name#変数に@をつける事でクラスの中のどこからでも参照出来るようになる
        @weight=weight
    end
    def eat(food)#このメソッドで犬の体重を1kg増やす
        @weight+=1
        p "体重:#{@weight}kg"
    end
    def cry
        p "この動物は#{@name}です"
    end
end
#インスタンスの作成
#インスタンスとはクラスをnewしたもの
#newはクラスのinitializeメソッドを呼び出す
dog1=Dog.new("春",5)#犬の(名前,体重)
dog2=Dog.new("夏",6)

dog1.eat("おやつ")#体重6kg
dog2.eat("おやつ")#体重7kg dog1とは別物扱いになる
dog1.eat("おやつ")#体重7kg
p "31--------------------------------"
#コンストラクタ
#クラスを初期化するメソッドの事
#Rubyではinitialize()がコンストラクタ
#initialize1()は省略する事が出来る
class Dog2
    def cry
        p "犬"
    end
end
 dog=Dog2.new
 dog.cry
#クラスの外から属性を設定できない
p "32-----------------------------------"
#attr_accessor
#クラスの内外から属性の読み書きを許す
class Cat
    attr_accessor :name,:weight
    def cry
        p "猫"
    end
end
cat=Cat.new
cat.name="春"
p cat.name
p "33------------------------------------"
#定数
#変わることのない値
class Cat1
    ANIMAL="猫"#定数は大文字とアンダーバーで名前を書く
    My_LEGS=4
    def leg_count
        "#{ANIMAL}は#{My_LEGS}本足です。"#変数と同じ書き方で参照する
    end
end
cat=Cat1.new
p cat.leg_count#猫は4本足です。
#クラスの外から定数を参照する場合クラス名の後にコロンを2つ付けて定数名を書く
p Cat1::My_LEGS#4
p "34--------------------------------------"
#Staticメソッド
#属性を必要としないメソッド
class Cat2
    def initialize(name)
        @naem=name
    end
    def name
        "私の名前は#{name}です"
    end
    def self.cry(food)#メソッドの前にself.をつける事でStaticメソッドが出来る
        "#{food}を食べる"
    end
end
p Cat2.cry("魚")#魚を食べる
#複数のStaticメソッドを一括で定義する方法
class Cat3
    class<<self#クラスの中にclass<<self最後にendと書くと中のメソッドが全てStaticメソッドになる
        def method1#一括定義できているのでこの行にself.が不要になった
        end

        def method2
        end
    end
end
p "35------------------------------------"
#継承
#別のクラスの機能を引き継ぐ事を継承と言う
#継承を使うと共通しているコードを一か所にまとめる事が出来る
#継承元のクラスを親クラスといい機能を引き継いだ側のクラスを子クラスと呼ぶ
#継承は何段階も行う事が出来る(子クラスの継承孫クラス)
class Cat4
    def initialize(name,weight)
        @name=name
        @weight=weight
    end
    def eat(food)
        @weight+=1
        p "体重:#{@weight}kg"
    end
    def cry
        p "私は#{@name}だ"
    end
end

class Dog4
    def initialize(name,weight)
        @name=name
        @weight=weight
    end
    def eat(food)
        @weight+=1
        p "体重:#{@weight}kg"
    end
    def cry
        p "私は#{@name}だぞ"
    end
end
#上記コードの違いは  p "私は#{@name}だ"のところだけなので共通しているところをまとめる
class Animal#このクラスで共通しているメソッドをまとめる
    def initialize(name,weight)
        @naem=name
        @weight=weight
    end
    def eat(food)
        @weight+=1
        p"体重:#{weight}kg"
    end
end
class Cat5<Animal#<AnimalはAnimalクラスの機能を引き継いだまま別クラスを定義するという意味
    def cry
        p "私は#{@name}だ"
    end
end

class Dog5<Animal
    def cry
        p "私は#{@name}だぞ"
    end
end
p "36-----------------------------------"
#オーバーライド(上書き)
#継承で引き継いだ機能を子クラス側で上書きする事ができる
#親クラスにある機能を子クラス側でも少し書き換えて書いた場合子クラスに親クラスの同じ機能は無視され
#子クラス側のメソッドが実行される(上書き)
#オーバーライドしても親クラスには影響しない

#親クラスAnimal1
class Animal1
    attr_accessor :weight
    def eat
        @weight+=1
        p "体重:#{@weight}kg"
    end
end
#子クラス(Cat6)でeatメソッドをオーバーライドすることで体重が2kgずつ増えるようになる
class Cat6<Animal
    def eat
        @weight+=2
        p "体重:#{weight}kg"
    end
end
#子クラスDOG6は親クラスを継承しているので体重が1kgずつ増える
class DOG6<Animal1
end
p "37-------------------------------"
#module
#moduleはクラスの一部分だけを切り取って部品化したもの
#複数のmoduleをincludeすることができる
module Eat
    attr_accessor :weight
    def eat
        @weight+=1
        p "体重:#{@weight}kg"
    end
end

class Animal3
    include Eat #moduleをinclude文で読み込む→moduleの持つ機能eatメソッドが使える
end

class Human
    include Eat
end
human=Human.new
human.weight=20
human.eat
