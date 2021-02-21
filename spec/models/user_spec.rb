require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーションのテスト' do
    # nameがなければ無効な状態であること
    context 'ユーザー名が空の場合' do
      it "is invalid without a content" do
        user = User.new(
          name: nil,
          email: 'test1@test.com',
          password: false,
          profile: 'ユーザー1のプロフィールです。',
          image: nil
        )
        user.valid?
        expect(user.errors[:name]).to include("can't be blank")
      end
    end
    # nameが100文字以上は無効な状態であること
    context 'ユーザー名が100文字以上の場合' do
      it 'is invalid if the name is more than 100 characters' do
        user = User.new(
          name: 'Rubyの初心者【ルビイスト】が異世界でプログラマになり無双する　～交通事故からの異世界に転生、かくかくしかじかあった挙げ句にSランクパーティから追放されたけれど、冒険者ギルドのシステムをDXして、冒険者達を影からこっそりサポートしてしまう～',
          email: 'test1@test.com',
          password: false,
          profile: 'ユーザー1のプロフィールです。',
          image: nil
        )
        user.valid?
        expect(user.errors[:name]).to include("is too long (maximum is 100 characters)")
      end
    end
    # profileが1000文字以上は無効な状態であること
    context 'プロフィールが1000文字以上の場合' do
      it 'is invalid if the name is more than 100 characters' do
        user = User.new(
          name: 'ユーザー1',
          email: 'test1@test.com',
          password: false,
          profile: '或曇つた冬の日暮である。私は横須賀発上り二等客車の隅に腰を下して、ぼんやり発車の笛を待つてゐた。とうに電燈のついた客車の中には、珍らしく私の外に一人も乗客はゐなかつた。外を覗のぞくと、うす暗いプラツトフオオムにも、今日は珍しく見送りの人影さへ跡を絶つて、唯、檻をりに入れられた小犬が一匹、時々悲しさうに、吠え立ててゐた。これらはその時の私の心もちと、不思議な位似つかはしい景色だつた。私の頭の中には云ひやうのない疲労と倦怠とが、まるで雪曇りの空のやうなどんよりした影を落してゐた。私は外套のポツケツトへぢつと両手をつつこんだ儘まま、そこにはいつてゐる夕刊を出して見ようと云ふ元気さへ起らなかつた。が、やがて発車の笛が鳴つた。私はかすかな心の寛くつろぎを感じながら、後の窓枠へ頭をもたせて、眼の前の停車場がずるずると後ずさりを始めるのを待つともなく待ちかまへてゐた。所がそれよりも先にけたたましい日和ひより下駄の音が、改札口の方から聞え出したと思ふと、間もなく車掌の何か云ひ罵ののしる声と共に、私の乗つてゐる二等室の戸ががらりと開いて、十三四の小娘が一人、慌あわただしく中へはいつて来た、と同時に一つづしりと揺れて、徐おもむろに汽車は動き出した。一本づつ眼をくぎつて行くプラツトフオオムの柱、置き忘れたやうな運水車、それから車内の誰かに祝儀の礼を云つてゐる赤帽――さう云ふすべては、窓へ吹きつける煤煙の中に、未練がましく後へ倒れて行つた。私は漸やうやくほつとした心もちになつて、巻煙草に火をつけながら、始めて懶ものうい睚まぶたをあげて、前の席に腰を下してゐた小娘の顔を一瞥いちべつした。それは油気のない髪をひつつめの銀杏返いてふがへしに結つて、横なでの痕のある皸ひびだらけの両頬を気持の悪い程赤く火照ほてらせた、如何にも田舎者ゐなかものらしい娘だつた。しかも垢じみた萌黄色もえぎいろの毛糸の襟巻がだらりと垂れ下つた膝の上には、大きな風呂敷包みがあつた。その又包みを抱いた霜焼けの手の中には、三等の赤切符が大事さうにしつかり握られてゐた。私はこの小娘の下品な顔だちを好まなかつた。それから彼女の服装が不潔なのもやはり不快だつた。最後にその二等と三等との区別さへも弁わきまへない愚鈍な心が腹立たしかつた。だから巻煙草に火をつけた私は、一つにはこの小娘の存在を忘れたいと云ふ心もちもあつて、今度はポツケツトの夕刊を漫然と膝の上へひろげて見た。すると其時夕刊の紙面に落ちてゐた外光が、突然電燈の光に変つて、刷すりの悪い何欄かの活字が意外な位鮮あざやかに私の眼の前へ浮んで来た。云ふまでもなく汽車は今、横須賀線に多い隧道トンネルの最初のそれへはいつたのである。',
          image: nil
        )
        user.valid?
        expect(user.errors[:profile]).to include("is too long (maximum is 1000 characters)")
      end
    end
    # ユーザー名とメールアドレスがあれば有効な状態であること
    context 'ユーザー名とメールアドレスに内容が記載されている場合' do
      it "is valid with a name, email" do
        user = User.new(
          name: 'ユーザー1',
          email: 'test1@test.com',
          password: 'password',
          profile: 'ユーザー1のプロフィールです。',
          image: nil
        )
        user.valid?
        expect(user).to be_valid
      end
    end
  end
end
