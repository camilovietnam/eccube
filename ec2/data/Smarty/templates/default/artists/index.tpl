<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/artists-list.css">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/ress.min.css">
<script src="<!--{$TPL_URLPATH}-->js/slick.min.js"></script>
<script src="<!--{$TPL_URLPATH}-->js/artist-list.js"></script>

<main>
    <div class="artistsSearchWrap">
        <div class="contentWrap">
            <div class="topicPath"><a href="#">TOP</a> / <span>Artists</span></div>
            <h2 class="type01">Artists</h2>
            <ul class="sortTab">
                <li><a href="#" class="kana current">50音からさがす</a></li>
                <li><a href="#" class="alphabet">アルファベットからさがす</a></li>
            </ul>
            <div id="searchBtnKana">
                <div class="searchBtnKana">
                    <ul>
                        <!-- ア行 -->
                        <li><a href="#kanaA" class="inner_link">ア</a></li>
                        <li><a href="#kanaI" class="inner_link">イ</a></li>
                        <li><a href="#kanaU" class="inner_link">ウ</a></li>
                        <li><a href="#kanaE" class="inner_link">エ</a></li>
                        <li><a href="#kanaO" class="inner_link">オ</a></li>
                        <!-- カ行 -->
                        <li><a href="#kanaKA" class="inner_link">カ</a></li>
                        <li><a href="#kanaKI" class="inner_link">キ</a></li>
                        <li><a href="#kanaKU" class="inner_link">ク</a></li>
                        <li><a href="#kanaKE" class="inner_link">ケ</a></li>
                        <li><a href="#kanaKO" class="inner_link">コ</a></li>
                        <!-- サ行 -->
                        <li><a href="#kanaSA" class="inner_link">サ</a></li>
                        <li><a href="#kanaSI" class="inner_link">シ</a></li>
                        <li><a href="#kanaSU" class="inner_link">ス</a></li>
                        <li><a href="#kanaSE" class="inner_link">セ</a></li>
                        <li><a href="#kanaSO" class="inner_link">ソ</a></li>
                        <!-- タ行 -->
                        <li><a href="#kanaTA" class="inner_link">タ</a></li>
                        <li><a href="#kanaTI" class="inner_link">チ</a></li>
                        <li><a href="#kanaTU" class="inner_link">ツ</a></li>
                        <li><a href="#kanaTE" class="inner_link">テ</a></li>
                        <li><a href="#kanaTO" class="inner_link">ト</a></li>
                        <!-- ナ行 -->
                        <li><a href="#kanaNA" class="inner_link">ナ</a></li>
                        <li><a href="#kanaNI" class="inner_link">ニ</a></li>
                        <li><a href="#kanaNU" class="inner_link">ヌ</a></li>
                        <li><a href="#kanaNE" class="inner_link">ネ</a></li>
                        <li><a href="#kanaNO" class="inner_link">ノ</a></li>
                    </ul>
                    <ul>
                        <!-- ハ行 -->
                        <li><a href="#kanaHA" class="inner_link">ハ</a></li>
                        <li><a href="#kanaHI" class="inner_link">ヒ</a></li>
                        <li><a href="#kanaHU" class="inner_link">フ</a></li>
                        <li><a href="#kanaHE" class="inner_link">ヘ</a></li>
                        <li><a href="#kanaHO" class="inner_link">ホ</a></li>
                        <!-- マ行 -->
                        <li><a href="#kanaMA" class="inner_link">マ</a></li>
                        <li><a href="#kanaMI" class="inner_link">ミ</a></li>
                        <li><a href="#kanaMU" class="inner_link">ム</a></li>
                        <li><a href="#kanaME" class="inner_link">メ</a></li>
                        <li><a href="#kanaMO" class="inner_link">モ</a></li>
                        <!-- ヤ行 -->
                        <li><a href="#kanaYA" class="inner_link">ヤ</a></li>
                        <li></li>
                        <li><a href="#kanaYU" class="inner_link">ユ</a></li>
                        <li></li>
                        <li><a href="#kanaYO" class="inner_link">ヨ</a></li>
                        <!-- ラ行 -->
                        <li><a href="#kanaRA" class="inner_link">ラ</a></li>
                        <li><a href="#kanaRI" class="inner_link">リ</a></li>
                        <li><a href="#kanaRU" class="inner_link">ル</a></li>
                        <li><a href="#kanaRE" class="inner_link">レ</a></li>
                        <li><a href="#kanaRO" class="inner_link">ロ</a></li>
                        <!-- ワ行 -->
                        <li><a href="#kanaWA" class="inner_link">ワ</a></li>
                        <li></li>
                        <li><a href="#kanaWO" class="inner_link">ヲ</a></li>
                        <li></li>
                        <li><a href="#kanaN" class="inner_link">ン</a></li>
                    </ul>
                </div>
            </div>

            <div id="searchBtnAlphabet" class="searchBtnAlphabet">
                <ul>
                    <li><a href="#alphabetA" class="inner_link">A</a></li>
                    <li><a href="#alphabetB" class="inner_link">B</a></li>
                    <li><a href="#alphabetC" class="inner_link">C</a></li>
                    <li><a href="#alphabetD" class="inner_link">D</a></li>
                    <li><a href="#alphabetE" class="inner_link">E</a></li>
                    <li><a href="#alphabetF" class="inner_link">F</a></li>
                    <li><a href="#alphabetG" class="inner_link">G</a></li>
                    <li><a href="#alphabetH" class="inner_link">H</a></li>
                    <li><a href="#alphabetI" class="inner_link">I</a></li>
                    <li><a href="#alphabetJ" class="inner_link">J</a></li>
                    <li><a href="#alphabetK" class="inner_link">K</a></li>
                    <li><a href="#alphabetL" class="inner_link">L</a></li>
                    <li><a href="#alphabetM" class="inner_link">M</a></li>
                    <li><a href="#alphabetN" class="inner_link">N</a></li>
                    <li><a href="#alphabetO" class="inner_link">O</a></li>
                    <li><a href="#alphabetP" class="inner_link">P</a></li>
                    <li><a href="#alphabetQ" class="inner_link">Q</a></li>
                    <li><a href="#alphabetR" class="inner_link">R</a></li>
                    <li><a href="#alphabetS" class="inner_link">S</a></li>
                    <li><a href="#alphabetT" class="inner_link">T</a></li>
                    <li><a href="#alphabetU" class="inner_link">U</a></li>
                    <li><a href="#alphabetV" class="inner_link">V</a></li>
                    <li><a href="#alphabetW" class="inner_link">W</a></li>
                    <li><a href="#alphabetX" class="inner_link">X</a></li>
                    <li><a href="#alphabetY" class="inner_link">Y</a></li>
                    <li><a href="#alphabetZ" class="inner_link">Z</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="contentWrap artistListKana">
        <!-- ア -->
        <div id="kanaA" class="artistListWrap anim">
            <h3>ア</h3>
            <ul class="artistList">
                <li><a href="#">IZ*ONE</a></li>
                <li><a href="#">あいみょん</a></li>
                <li><a href="#">ASKA</a></li>
                <li><a href="#">阿部真央</a></li>
                <li><a href="#">amazarashi</a></li>
            </ul>
        </div>
        <!-- イ -->
        <div id="kanaI" class="artistListWrap anim">
            <h3>イ</h3>
            <ul class="artistList">
                <li><a href="#">EXIT</a></li>
                <li><a href="#">生駒里奈</a></li>
                <li><a href="#">=LOVE</a></li>
            </ul>
        </div>
        <!-- ウ -->
        <div id="kanaU" class="artistListWrap anim">
            <h3>ウ</h3>
            <ul class="artistList">
                <li><a href="#">UVERworld</a></li>
            </ul>
        </div>
        <!-- エ -->
        <div id="kanaE" class="artistListWrap anim">
            <h3>エ</h3>
            <ul class="artistList">
                <li><a href="#">ACE COLLECTION</a></li>
                <li><a href="#">STU48</a></li>
            </ul>
        </div>
        <!-- オ -->
        <div id="kanaO" class="artistListWrap anim">
            <h3>オ</h3>
            <ul class="artistList">
                <li><a href="#">OWV</a></li>
                <li><a href="#">Official髭男dism</a></li>
            </ul>
        </div>
    </div>

    <div class="contentWrap artistListAlphabet">
        <!-- A -->
        <div id="alphabetA" class="artistListWrap anim">
            <h3>A</h3>
            <ul class="artistList">
                <li><a href="#">AAAAA</a></li>
                <li><a href="#">AAAAA</a></li>
                <li><a href="#">AAAAA</a></li>
                <li><a href="#">AAAAA</a></li>
                <li><a href="#">AAAAA</a></li>
            </ul>
        </div>
        <!-- B -->
        <div id="alphabetB" class="artistListWrap anim">
            <h3>B</h3>
            <ul class="artistList">
                <li><a href="#">BBBBB</a></li>
                <li><a href="#">BBBBB</a></li>
                <li><a href="#">BBBBB</a></li>
                <li><a href="#">BBBBB</a></li>
            </ul>
        </div>
        <!-- C -->
        <div id="alphabetC" class="artistListWrap anim">
            <h3>C</h3>
            <ul class="artistList">
                <li><a href="#">CCCCC</a></li>
                <li><a href="#">CCCCC</a></li>
                <li><a href="#">CCCCC</a></li>
                <li><a href="#">CCCCC</a></li>
                <li><a href="#">CCCCC</a></li>
                <li><a href="#">CCCCC</a></li>
            </ul>
        </div>
        <!-- D -->
        <div id="alphabetD" class="artistListWrap anim">
            <h3>D</h3>
            <ul class="artistList">
                <li><a href="#">DDDDD</a></li>
                <li><a href="#">DDDDD</a></li>
            </ul>
        </div>
    </div>
</main>