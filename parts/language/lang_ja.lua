local C=COLOR
return{
    loadText={
        loadSFX="Loading Sound Effects",
        loadSample="Loading Instrument Samples",
        loadVoice="Loading Voice Packs",
        loadFont="Loading Fonts",
        loadModeIcon="Loading Mode Icons",
        loadMode="Loading Modes",
        loadOther="Loading Other Assets",
        finish="Press Any Key to Start!",
    },
    sureQuit="終了するにはもう一度押してください",
    sureReset="リセットするにはもう一度押してください",
    sureDelete="削除するにはもう一度押してください",
    newDay="新しい1日、新しい始まりです!",
    playedLong="長時間プレイしています、適度に休憩を",
    playedTooMuch="かなり長くプレイしています! Techminoは楽しいですが、休憩を忘れずに!",
    settingWarn="注意: 通常ではない設定に変更しました!",

    atkModeName={"ランダム","バッジねらい","ととめうち","カウンター"},
    royale_remain="残り $1 人",
    powerUp={[0]="+000%","+025%","+050%","+075%","+100%"},
    cmb={nil,"1 REN","2 REN","3 REN","4 REN","5 REN","6 REN","7 REN","8 REN","9 REN","10 REN!","11 REN!","12 REN!","13 REN!","14 REN!!","15 REN!!","16 REN!!","17 REN!!!","18 REN!!!","19 REN!!!","MEGAREN"},
    spin="-spin",
    clear={"Single","Double","Triple","Techrash","Pentacrash","Hexacrash","Heptacrash","Octacrash","Nonacrash","Decacrash","Undecacrash","Dodecacrash","Tridecacrash","Tetradecacrash","Pentadecacrash","Hexadecacrash","Heptadecacrash","Octadecacrash","Nonadecacrash","Ultracrash","Impossicrash"},
    cleared="$1 Lines",
    mini="Mini",b2b="B2B ",b3b="B2B2B ",
    PC="Perfect Clear",HPC="Half-Perfect Clear",
    replaying="[Replay]",
    tasUsing="[TAS]",

    stage="Stage $1 Cleared!",
    great="Great!",
    awesome="Awesome!",
    almost="Almost There!",
    continue="Keep Going!",
    maxspeed="MAX SPEED!",
    speedup="Speed Up!",
    missionFailed="Wrong Clear",

    speedLV="Speed Level",
    piece="Piece",line="Lines",atk="火力",eff="効率",
    rpm="RPM",tsd="TSD",
    grade="Grade",techrash="Techrash",
    wave="Wave",nextWave="Next",
    combo="Combo",maxcmb="Max Combo",
    pc="Perfect Clear",ko="KOs",

    win="Win!",
    lose="Lose",

    finish="Finished",
    gamewin="You Won",
    gameover="Game Over",

    pause="Pause",
    pauseCount="Pause回数",
    finesse_ap="All Perfect",
    finesse_fc="Full Combo",

    page="Page:",

    cc_fixed="CCは、固定されたミノ順には非対応です",
    cc_swap="ホールドがSwapの時、CCは非対応です",
    ai_prebag="AIはテトロミノではないものを含み、カスタムされたミノ順には非対応です",
    ai_mission="AIは、カスタムミッションに非対応です",
    switchSpawnSFX="ブロック出現時のSFXをONにしてください!",
    needRestart="すべての変更を適用するために再起動してください",

    loadError_errorMode="'$1'の読み込みに失敗: ロードモード'$2'が存在しません",
    loadError_read="'$1'の読み込みに失敗: 読み込みに失敗しました",
    loadError_noFile="'$1'の読み込みに失敗: ファイルが存在しません",
    loadError_other="'$1'の読み込みに失敗: $2",
    loadError_unknown="'$1'の読み込みに失敗: 理由不明",

    saveError_duplicate="'$1'の保存に失敗:既に同じ名前のファイルがあります",
    saveError_encode="'$1'の保存に失敗:エンコードエラー",
    saveError_other="'$1'の保存に失敗: $2",
    saveError_unknown="'$1'の読み込みに失敗:理由不明",

    copyDone="コピーしました!",
    saveDone="データを保存しました!",
    exportSuccess="出力成功!",
    importSuccess="入力成功!",
    dataCorrupted="データが破損してます",
    pasteWrongPlace="貼り付ける位置が間違ってませんか?",
    noFile="ファイルがないです",

    nowPlaying="Now playing:",

    VKTchW="タッチ感度",
    VKOrgW="オリジナル感度",
    VKCurW="現在の配置",

    noScore="No scores",
    modeLocked="Locked",
    unlockHint="Rank B以上を取得すると解放されます",
    highScore="High Scores",
    newRecord="New Record!",

    replayBroken="リプレイが読み込めません",

    dictNote="==TetroDictionaryからコピーしました==",

    getNoticeFail="お知らせ情報が取得できませんでした",
    oldVersion="Version $1が取得できます",
    needUpdate="最新のVersionを取得してください!",
    versionNotMatch="Versionsが一致しません!",
    notFinished="工事中!",

    jsonError="JSON Error",

    noUsername="ユーザーネームを入力してください",
    wrongEmail="メールアドレスが無効です",
    noPassword="パスワードを入力してください",
    diffPassword="パスワードが一致しません",
    registerRequestSent="Sign Upリクエストを送信しました",
    registerSuccessed="Sign Up成功!",
    loginSuccessed="ログインしています!",
    accessSuccessed="アクセス権限を取得しました",

    wsConnecting="Websocket connecting…",
    wsFailed="WebSocket Connection Failed",
    wsClose="WebSocket Closed:",
    netTimeout="接続がタイムアウトしました",

    onlinePlayerCount="Online",
    createRoomSuccessed="部屋を建てました",
    started="Playing",
    joinRoom="が入室しました",
    leaveRoom="が退出しました",
    ready="Ready",
    connStream="接続中...",
    waitStream="待機中...",
    spectating="Spectating",
    chatRemain="Online",
    chatStart="------チャットの先頭------",
    chatHistory="------新しいメッセージ------",

    keySettingInstruction="選択してキーを入力\nEscape: キャンセル\nBackspace: キーを削除",
    customBGhelp="カスタム背景にする画像ファイルをドロップ",
    customBGloadFailed="サポートされていないフォーマットのファイルです",

    errorMsg="問題が発生しました、エラーログを開発者に送り、再起動してください",
    tryAnotherBuild="[Invalid UTF-8]使用しているOSがWindowsであればTechmino-win32かTechmino-win64をダウンロードしてください (現在使用しているものは違うものです)",

    modInstruction="Modを選択してください!\nModはゲームの中身を変えます\nしかしゲームが破損することもあります\nModを使用した場合スコアは保存されません",
    modInfo={
        next="NEXT\nNEXTの個数を変更します",
        hold="HOLD\nHOLDの個数を変更します",
        hideNext="Hidden NEXT\n指定した数だけNEXTを隠します",
        infHold="InfiniHold\nHOLDできる回数を無限にします",
        hideBlock="Hide Current Piece:\n現在出現しているピースを隠します",
        hideGhost="No Ghost\nゴーストを消します",
        hidden="Hide Locked Pieces\n設置されたピースが時間内に見えなくなります",
        hideBoard="Hide Board\n盤面の一部もしくは、全体を隠します",
        flipBoard="Flip Board\n盤面が回転もしくは滑ります",
        dropDelay="Gravity\n落下速度をフレーム単位で変更します",
        lockDelay="Lock Delay\n設置猶予をフレーム単位で変更します",
        waitDelay="Spawn Delay\nブロックの出現猶予をフレーム単位で変更します",
        fallDelay="Line Clear Delay\nLine消去時間をフレーム単位で変更します",
        life="Life\n残機数を変更します",
        forceB2B="B2B Only\nB2Bが途切れるとゲームオーバーです",
        forceFinesse="Finesse Only\n最適化を失敗するとゲームオーバーです",
        tele="Teleport\nDAS:0,ARR:0になります",
        noRotation="No Rotation\n回転出来なくなります",
        noMove="No Movement\n左右移動が出来なくなります",
        customSeq="Randomizer\nミノの出現法則を変更します",
        pushSpeed="Garbage Speed\n下穴がせり上がるまでに置けるブロック数を変更します (ブロック数/フレーム)",
        boneBlock="[ ]\n[ ]ブロックで遊ぼう",
    },
    pauseStat={
        "Time:",
        "入力/回転/Hold:",
        "Pieces:",
        "Row/Dig:",
        "Attack/DigAtk:",
        "Received:",
        "Line消去数:",
        "Spins:",
        "B2B/B3B/PC/HPC:",
        "最適化:",
    },
    radar={"DEF","OFF","ATK","SEND","SPD","DIG"},
    radarData={"DPM","ADPM","APM","SPM","LPM","DPM"},
    stat={
        "起動回数:",
        "プレイ回数:",
        "プレイ時間:",
        "入力/回転/Hold:",
        "Block/Row/Atk:",
        "Recv/Res/Asc:",
        "Dig/Dig Atk:",
        "Eff/Dig Eff:",
        "B2B/B3B:",
        "PC/HPC:",
        "最適化 ミス/Rate:",
    },
    aboutTexts={
        "これは\"ただの\"落ちものパズルゲームです。本当ですよ",
        "Inspired by C2/IO/JS/WWC/KOS etc.",
        "",
        "Powered by LÖVE",
        "ご意見、ご感想、バグ報告など大歓迎です!",
        "ゲームは、必ず公式から入手してください",
        "他から入手した場合は、安全性を保証しません",
        "同時に作者は、責任を負いません",
        FNNS and"/"or"ゲーム自体は、無料ですが寄付をお願いします",
        FNNS and"/"or"詳しくはZictionaryをご覧ください",
    },
    staff={
        "ORIGINALLY BY MrZ",
        "E-Mail: 1046101471@qq.com",
        "",
        "プログラム、開発、デザイン",
        "MrZ",
        "",
        "楽曲作成ツール",
        "Beepbox",
        "FL Studio",
        "FL Mobile",
        "Logic Pro X",
        "",
        "[POWERED BY LÖVE]",
        "",
        "プログラミング",
        "MrZ",
        "ParticleG",
        "Gompyn",
        "Trebor",
        "(scdhh)",
        "(FinnTenzor)",
        "(NOT_A_ROBOT)",
        "(user670)",
        "",
        "GitHub CI(パッケージングとバックエンド)",
        "ParticleG",
        "Trebor",
        "LawrenceLiu",
        "Gompyn",
        "flaribbit",
        "scdhh",
        "",
        "ビジュアルデザイン(UIとUX)",
        "MrZ",
        "Gnyar",
        "C₂₉H₂₅N₃O₅",
        "ScF",
        "(旋律星萤)",
        "(T0722)",
        "",
        "ミュージカルデザイン",
        "MrZ",
        "柒栎流星",
        "ERM",
        "Trebor",
        "C₂₉H₂₅N₃O₅",
        "(T0722)",
        "(Aether)",
        "(Hailey)",
        "",
        "SFXとボイスパック",
        "Miya",
        "Xiaoya",
        "Mono",
        "MrZ",
        "Trebor",
        "",
        "翻訳とローカリゼーション",
        "User670",
        "MattMayuga",
        "Mizu",
        "Mr.Faq",
        "ScF",
        "C₂₉H₂₅N₃O₅",
        "NOT_A_ROBOT",
        "",
        "パフォーマンス",
        "Electric283",
        "Hebomai",
        "",
        "Special Thanks",
        "Flyz",
        "Big_True",
        "NOT_A_ROBOT",
        "思竣",
        "yuhao7370",
        "Farter",
        "Teatube",
        "蕴空之灵",
        "T9972",
        "No-Usernam8",
        "andrew4043",
        "smdbs-smdbs",
        "paoho",
        "Allustrate",
        "Haoran SUN",
        "Tianling Lyu",
        "huaji2369",
        "Lexitik",
        "Tourahi Anime",
        "[All other test staff]",
        "…And You!",
    },
    used=[[
    Tools used:
        BeepBox
        GoldWave
        GFIE
        FL Mobile
    Libs used:
        Cold_Clear [MinusKelvin]
        json.lua [rxi]
        profile.lua [itraykov]
        simple-love-lights [dylhunn]
    ]],
    support="Support the Author",
    WidgetText={
        main={
            offline="ソロプレイ",
            qplay="続きから",
            online="マルチプレイ",
            custom="カスタムプレイ",
            setting="設定",
            stat="統計",
            dict="Zictionary",
            replays="リプレイ",
        },
        main_simple={
            sprint="Sprint",
            marathon="Marathon",
        },
        mode={
            mod="Mods (F1)",
            start="Start",
        },
        mod={
            title="Mods",
            reset="リセット (tab)",
            unranked="Unranked",
        },
        pause={
            setting="設定 (S)",
            replay="リプレイ (P)",
            save="保存 (O)",
            resume="再開 (esc)",
            restart="リスタート (R)",
            quit="終了 (Q)",
            tas="TAS (T)",
        },
        net_menu={
            league="リーグ",
            ffa="FFA",
            rooms="クラブ",
            logout="Log Out",
        },
        net_league={
            match="対戦相手を探す",
        },
        net_rooms={
            password="パスワード",
            refreshing="探索中",
            noRoom="部屋が存在しません",
            refresh="更新",
            new="部屋を建てる",
            join="参加",
        },
        net_newRoom={
            title="部屋設定",
            roomName="部屋名 (デフォルト: \"[username]'s room\")",
            password="パスワード",
            description="部屋説明",

            life="残機数",
            pushSpeed="せり上がり速度",
            garbageSpeed="せり上がり猶予",
            visible="設置ミノの視認性",
            freshLimit="設置時間のリセット回数",

            fieldH="盤面の高さ",
            bufferLimit="ダメージの保持上限",
            heightLimit="致死Lineの高さ",

            drop="自然落下時間",
            lock="設置時間",
            wait="操作硬直時間",
            fall="Line消去時間",
            hang="死後硬直時間",
            hurry="AREキャンセル時間",

            capacity="試合人数",
            create="作成",

            ospin="O-spin",
            fineKill="最適化のみ",
            b2bKill="B2B継続",
            lockout="盤面内でのみ設置",
            easyFresh="通常の設置時間リセット",
            deepDrop="ディープドロップ",
            bone="骨ブロック",

            eventSet="ルール設定",

            holdMode="Hold設定",
            nextCount="Next",
            holdCount="Hold",
            infHold="Infinite Hold",
            phyHold="In-place Hold",
        },
        net_game={
            ready="Ready",
            spectate="Spectate",
            cancel="Cancel ready",
        },
        setting_game={
            title="game設定",
            graphic="←Video",
            sound="Audio→",
            style="スタイル",

            ctrl="チューニング",
            key="キーコンフィグ",
            touch="タッチ設定",
            showVK="入力キーの可視化",
            reTime="開始カウント",
            RS="回転法則",
            menuPos="メニューの位置",
            sysCursor="システムカーソル",
            autoPause="ゲーム中断時のオートポーズ",
            autoSave="オートセーブ",
            autoLogin="オートログイン",
            simpMode="シンプルなホーム画面",
        },
        setting_video={
            title="video設定",
            sound="←Audio",
            game="Game→",

            block="操作ブロックの描画",
            smooth="滑らかな自然落下",
            upEdge="3D Block",
            bagLine="7bagの境界線",

            ghostType="ゴーストタイプ",
            ghost="ゴースト",
            center="ブロック中心の透明度",
            grid="グリッド",
            lineNum="行番号",

            lockFX="設置演出",
            dropFX="落下演出",
            moveFX="左右移動演出",
            clearFX="Line消去演出",
            splashFX="消去時の弾ける演出",
            shakeFX="盤面移動演出",
            atkFX="攻撃演出",

            frame="レンダリングフレームレート(%)",
            FTlock="フレームスキップ",

            text="Line消去ポップ",
            score="スコアポップ",
            bufferWarn="ダメージアラート",
            showSpike="スパイクカウンター",
            nextPos="出現位置のプレビュー",
            highCam="画面のスクロール",
            warn="警告演出",

            clickFX="クリック演出",
            power="バッテリー",
            clean="素早い描画",
            fullscreen="フルスクリーン",

            bg_on="通常背景",
            bg_off="背景なし",
            bg_custom="カスタム背景",

            blockSatur="ブロックデザイン",
            fieldSatur="設置ブロックデザイン",
        },
        setting_sound={
            title="Audio設定",

            game="←Game",
            graphic="Video→",

            mainVol="主音量",
            bgm="BGM",
            sfx="SFX",
            stereo="ステレオ",
            spawn="ブロックの出現音",
            warn="警告音",
            vib="振動",
            voc="ボイス",

            autoMute="ゲーム中断時のオートミュート",
            fine="最適化失敗音",
            sfxPack="SFXパック",
            vocPack="ボイスパック",
            apply="適用",
        },
        setting_control={
            title="チューニング設定",
            preview="preview",

            das="DAS",arr="ARR",
            dascut="DAS cut",
            dropcut="Auto-lock cut",
            sddas="Soft Drop DAS",sdarr="Soft Drop ARR",
            ihs="Initial Hold",
            irs="Initial Rotation",
            ims="Initial Movement",
            reset="リセット",
        },
        setting_key={
            a1="Move Left",
            a2="Move Right",
            a3="Rotate Right",
            a4="Rotate Left",
            a5="Rotate 180°",
            a6="Hard Drop",
            a7="Soft Drop",
            a8="Hold",
            a9="Function 1",
            a10="Function 2",
            a11="Instant Left",
            a12="Instant Right",
            a13="Sonic Drop",
            a14="Down 1",
            a15="Down 4",
            a16="Down 10",
            a17="Left Drop",
            a18="Right Drop",
            a19="Left Zangi",
            a20="Right Zangi",
            restart="Retry",
        },
        setting_skin={
            skinSet="ブロックスキン",
            title="スタイル設定",
            skinR="色をリセット",
            faceR="方向をリセット",
        },
        setting_touch={
            default="デフォルト",
            snap="グリッドにスナップ",
            size="サイズ",
            shape="シャープ",
        },
        setting_touchSwitch={
            b1= "Move Left:",    b2="Move Right:", b3="Rotate Right:",  b4="Rotate Left:",
            b5= "Rotate 180°:",  b6="Hard Drop:",  b7="Soft Drop:",      b8="Hold:",
            b9= "Function 1:",    b10="Function 2:", b11="Instant Left:", b12="Instant Right:",
            b13="Sonic Drop:",   b14="Down 1:",    b15="Down 4:",       b16="Down 10:",
            b17="Left Drop:",    b18="Right Drop:",b19="Left Zangi:",   b20="Right Zangi:",

            norm="Normal",
            pro="Advanced",
            icon="アイコン",
            sfx="SFX",
            vib="VIB",
            alpha="Alpha",

            track="オートトラック",
            dodge="オートドッチ",
        },
        customGame={
            title="カスタムプレイ",
            defSeq="デフォルトのミノ順",
            noMsn="ミッションなし",

            drop="自然落下時間",
            lock="設置時間",
            wait="操作硬直時間",
            fall="Line消去時間",
            hang="死後硬直時間",
            hurry="AREキャンセル時間",

            bg="背景",
            bgm="音楽",

            copy="盤面+ミノ順+ミッションをコピー",
            paste="盤面+ミノ順+ミッションを貼り付け",
            play_clear="スタート",
            play_puzzle="パズルをスタート",

            reset="リセット (del)",
            advance="More (A)",
            mod="Mods (F1)",
            field="盤面編集 (F)",
            sequence="ミノ順編集 (S)",
            mission="ミッション編集 (M)",

            eventSet="ルール設定",

            holdMode="Hold設定",
            nextCount="Next",
            holdCount="Hold",
            infHold="Infinite Hold",
            phyHold="In-place Hold",

            fieldH="盤面の高さ",
            visible="設置ミノの視認性",
            freshLimit="設置時間のリセット回数",
            opponent="相手",
            life="残機数",
            pushSpeed="せり上がり速度",
            garbageSpeed="せり上がり猶予",

            bufferLimit="ダメージの保持上限",
            heightLimit="致死Lineの高さ",
            ospin="O-Spin",
            fineKill="最適化のみ",
            b2bKill="B2B継続",
            lockout="Fail on Lock Out",
            easyFresh="通常の設置時間リセット",
            deepDrop="Deep Drop",
            bone="骨ブロック",
        },
        custom_field={
            title="カスタムプレイ",
            subTitle="盤面",

            any="消しゴム",
            smart="自動着色",

            push="せり上がり (K)",
            del="Line消去 (L)",

            demo="×を非表示",

            newPg="ページ追加 (N)",
            delPg="ページ削除 (M)",
            prevPg="←",
            nextPg="→",
        },
        custom_sequence={
            title="カスタムプレイ",
            subTitle="ミノ順",
            sequence="巡法則",
        },
        custom_mission={
            title="カスタムプレイ",
            subTitle="ミッション",

            _1="1",_2="2",_3="3",_4="4",
            any1="any1",any2="any2",any3="any3",any4="any4",
            PC="PC",
            Z1="Z1",S1="S1",J1="J1",L1="L1",T1="T1",O1="O1",I1="I1",
            Z2="Z2",S2="S2",J2="J2",L2="L2",T2="T2",O2="O2",I2="I2",
            Z3="Z3",S3="S3",J3="J3",L3="L3",T3="T3",O3="O3",I3="I3",
            O4="O4",I4="I4",
            mission="強制ミッション",
        },
        about={
            staff="staff",
            his="History",
            legals="Legals",
        },
        dict={
            title="TetroDictionary",
        },
        stat={
            path="データフォルダ読み込み",
            save="データ管理",
        },
        music={
            title="music room",
            arrow="→",
            now="Now Playing:",

            bgm="BGM",
            sound="SFXs",
        },
        launchpad={
            title="SFX Room",
            bgm="BGM",
            sfx="SFX",
            voc="VOC",
            music="BGM",
            label="ラベル",
        },
        login={
            title="Sign In",
            register="Sign Up",
            email="Email Address",
            password="Password",
            keepPW="Remember me",
            login="Log In",
        },
        register={
            title="Sign Up",
            login="Sign In",
            username="ユーザーネーム",
            email="メールアドレス",
            password="パスワード",
            password2="パスワード",
            register="Sign Up",
            registering="応答待機中...",
        },
        account={
            title="アカウント",
        },
        app_15p={
            color="Color",
            invis="Invis",
            slide="Slide",
            pathVis="Show Path",
            revKB="Reverse",
        },
        app_schulteG={
            rank="Size",
            invis="Invis",
            disappear="Hide",
            tapFX="Tap FX",
        },
        app_AtoZ={
            level="Level",
            keyboard="Keyboard",
        },
        app_2048={
            invis="Invis",
            tapControl="Tap controls",

            skip="Skip Round",
        },
        app_ten={
            next="Next",
            invis="Invis",
            fast="Fast",
        },
        app_dtw={
            color="Color",
            mode="Mode",
            bgm="BGM",
            arcade="Arcade",
        },
        app_link={
            invis="Invis",
        },
        savedata={
            export="クリップボードにコピー",
            import="クリップボードからインポート",
            unlock="進捗",
            data="統計",
            setting="設定",
            vk="仮想キーレイアウト",

            couldSave="クラウドに保存(注意:テスト段階)",
            notLogin="[クラウドにアクセス中]",
            upload="アップロード",
            download="ダウンロード",
        },
    },
    modes={
        ['sprint_10l']=     {"Sprint",            "10L",        "10 Line消去!"},
        ['sprint_20l']=     {"Sprint",            "20L",        "20 Line消去!"},
        ['sprint_40l']=     {"Sprint",            "40L",        "40 Line消去!"},
        ['sprint_100l']=    {"Sprint",            "100L",       "100 Line消去!"},
        ['sprint_400l']=    {"Sprint",            "400L",       "400 Line消去!"},
        ['sprint_1000l']=   {"Sprint",            "1,000L",      "1,000 Line消去!"},
        ['sprintPenta']=    {"Sprint",            "PENTOMINO",  "ペントミノで40 Line消去!"},
        ['sprintMPH']=      {"Sprint",            "MPH",        "ミノ順なし\nNextなし\nHoldなし"},
        ['dig_10l']=        {"Dig",               "10L",        "10 Line下穴を消去"},
        ['dig_40l']=        {"Dig",               "40L",        "40 Line下穴を消去"},
        ['dig_100l']=       {"Dig",               "100L",       "100 Line下穴を消去"},
        ['dig_400l']=       {"Dig",               "400L",       "400 Line下穴を消去"},
        ['drought_n']=      {"Drought",           "100L",       "Ｉミノなし"},
        ['drought_l']=      {"Drought+",          "100L",       "Ｗ　Ｔ　Ｆ"},
        ['marathon_n']=     {"Marathon",          "NORMAL",     "速くなる中200 Lineのマラソン"},
        ['marathon_h']=     {"Marathon",          "HARD",       "速い中200 Lineのマラソン"},
        ['solo_e']=         {"Battle",            "EASY",       "AI討伐!"},
        ['solo_n']=         {"Battle",            "NORMAL",     "AI討伐!"},
        ['solo_h']=         {"Battle",            "HARD",       "AI討伐!"},
        ['solo_l']=         {"Battle",            "LUNATIC",    "AI討伐!"},
        ['solo_u']=         {"Battle",            "ULTIMATE",   "AI討伐!"},
        ['techmino49_e']=   {"Tech 49",           "EASY",       "49人で勝負\n最後の1人になれ!"},
        ['techmino49_h']=   {"Tech 49",           "HARD",       "49人で勝負\n最後の1人になれ!"},
        ['techmino49_u']=   {"Tech 49",           "ULTIMATE",   "49人で勝負\n最後の1人になれ!"},
        ['techmino99_e']=   {"Tech 99",           "EASY",       "99人で勝負\n最後の1人になれ!"},
        ['techmino99_h']=   {"Tech 99",           "HARD",       "99人で勝負\n最後の1人になれ!"},
        ['techmino99_u']=   {"Tech 99",           "ULTIMATE",   "99人で勝負\n最後の1人になれ!"},
        ['round_e']=        {"Turn-Based",        "EASY",       "ターン制のAIと勝負!"},
        ['round_n']=        {"Turn-Based",        "NORMAL",     "ターン制のAIと勝負!"},
        ['round_h']=        {"Turn-Based",        "HARD",       "ターン制のAIと勝負!"},
        ['round_l']=        {"Turn-Based",        "LUNATIC",    "ターン制のAIと勝負!"},
        ['round_u']=        {"Turn-Based",        "ULTIMATE",   "ターン制のAIと勝負!"},
        ['master_n']=       {"Master",            "NORMAL",     "20G 初心者方へ"},
        ['master_h']=       {"Master",            "HARD",       "20G プロの方へ"},
        ['master_m']=       {"Master",            "M21",        "20G マスターの方へ"},
        ['master_final']=   {"Master",            "FINAL",      "20G その先へ"},
        ['master_ph']=      {"Master",            "PHANTASM",   "???"},
        ['master_ex']=      {"GrandMaster",       "EXTRA",      "刹那よりも短い永遠"},
        ['master_instinct']={"Master",            "INSTINCT",   "もしミノが見えなくなったら?"},
        ['strategy_e']=     {"Strategy",          "EASY",       "20Gでの素早い判断"},
        ['strategy_h']=     {"Strategy",          "HARD",       "20Gでの素早い判断"},
        ['strategy_u']=     {"Strategy",          "ULTIMATE",   "20Gでの素早い判断"},
        ['strategy_e_plus']={"Strategy",          "EASY+",      "20Gでの素早い判断"},
        ['strategy_h_plus']={"Strategy",          "HARD+",      "20Gでの素早い判断"},
        ['strategy_u_plus']={"Strategy",          "ULTIMATE+",  "20Gでの素早い判断"},
        ['blind_e']=        {"Invisible",         "HALF",       "初心者用"},
        ['blind_n']=        {"Invisible",         "ALL",        "中級者用"},
        ['blind_h']=        {"Invisible",         "SUDDEN",     "上級者用"},
        ['blind_l']=        {"Invisible",         "SUDDEN+",    "プロフェッショナル用"},
        ['blind_u']=        {"Invisible",         "?",          "覚悟はいいかい?"},
        ['blind_wtf']=      {"Invisible",         "WTF",        "まだ覚悟が足りない"},
        ['classic_e']=      {"Classic",           "EASY",       "80年代を超低速で体験"},
        ['classic_h']=      {"Classic",           "HARD",       "80年代を通常速度で体験"},
        ['classic_u']=      {"Classic",           "ULTIMATE",   "80年代を超高速で体験"},
        ['survivor_e']=     {"Survival",          "EASY",       "どれだけ生き残れる?"},
        ['survivor_n']=     {"Survival",          "NORMAL",     "どれだけ生き残れる?"},
        ['survivor_h']=     {"Survival",          "HARD",       "どれだけ生き残れる?"},
        ['survivor_l']=     {"Survival",          "LUNATIC",    "どれだけ生き残れる?"},
        ['survivor_u']=     {"Survival",          "ULTIMATE",   "どれだけ生き残れる?"},
        ['attacker_h']=     {"Attacker",          "HARD",       "攻撃力を磨け!"},
        ['attacker_u']=     {"Attacker",          "ULTIMATE",   "攻撃力を磨け!"},
        ['defender_n']=     {"Defender",          "NORMAL",     "防御力を磨け!"},
        ['defender_l']=     {"Defender",          "LUNATIC",    "防御力を磨け!"},
        ['dig_h']=          {"Driller",           "HARD",       "回復力を磨け!"},
        ['dig_u']=          {"Driller",           "ULTIMATE",   "回復力を磨け!"},
        ['clearRush']=      {"Clear Rush",        "NORMAL",     "All-Spinチュートリアル!\n[開発中]"},
        ['c4wtrain_n']=     {"C4W Training",      "NORMAL",     "無限コンボ"},
        ['c4wtrain_l']=     {"C4W Training",      "LUNATIC",    "無限コンボ"},
        ['pctrain_n']=      {"PC Training",       "NORMAL",     "パフェ練習"},
        ['pctrain_l']=      {"PC Training",       "LUNATIC",    "もっと難しいパフェ練習"},
        ['pc_n']=           {"PC Challenge",      "NORMAL",     "100Line以内にパフェをたくさん!"},
        ['pc_h']=           {"PC Challenge",      "HARD",       "100Line以内にパフェをたくさん!"},
        ['pc_l']=           {"PC Challenge",      "LUNATIC",    "100Line以内にパフェをたくさん!"},
        ['pc_inf']=         {"Infinite PC Challenge", "",           "できる限りたくさんのパフェを"},
        ['tech_n']=         {"Tech",              "NORMAL",     "B2Bを続けよう!"},
        ['tech_n_plus']=    {"Tech",              "NORMAL+",    "回転入れとパフェだけ"},
        ['tech_h']=         {"Tech",              "HARD",       "B2Bを続けよう!"},
        ['tech_h_plus']=    {"Tech",              "HARD+",      "回転入れとパフェだけ"},
        ['tech_l']=         {"Tech",              "LUNATIC",    "回転入れとパフェだけ"},
        ['tech_l_plus']=    {"Tech",              "LUNATIC+",   "回転入れとパフェだけ"},
        ['tech_finesse']=   {"Tech",              "FINESSE",    "最適化!"},
        ['tech_finesse_f']= {"Tech",              "FINESSE+",   "最適化はそのまま、普通のLine消去禁止!"},
        ['tsd_e']=          {"TSD Challenge",     "EASY",       "TSDだけ!"},
        ['tsd_h']=          {"TSD Challenge",     "HARD",       "TSDだけ!"},
        ['tsd_u']=          {"TSD Challenge",     "ULTIMATE",   "TSDだけ!"},
        ['backfire_n']=     {"Backfire",          "NORMAL",     "撃った火力が戻ってくる"},
        ['backfire_h']=     {"Backfire",          "HARD",       "撃った火力が戻ってくる"},
        ['backfire_l']=     {"Backfire",          "LUNATIC",    "撃った火力が戻ってくる"},
        ['backfire_u']=     {"Backfire",          "ULTIMATE",   "撃った火力が戻ってくる"},
        ['sprintAtk']=      {"Sprint",            "100 Attack", "100line送れ!"},
        ['sprintEff']=      {"Sprint",            "Efficiency", "40lineの間にできるだけ火力を出せ!"},
        ['zen']=            {'Zen',               "200",        "時間制限なしで200Line消去"},
        ['ultra']=          {'Ultra',             "EXTRA",      "2分間のスコアアタック"},
        ['infinite']=       {"Infinite",           "",          "ただのサンドボックス"},
        ['infinite_dig']=   {"Infinite: Dig",      "",          "掘れ掘れ掘れ"},
        ['marathon_inf']=   {"Marathon",           "INFINITE",  "マラソン"},

        ['custom_clear']=   {"Custom",            "NORMAL"},
        ['custom_puzzle']=  {"Custom",            "PUZZLE"},
    },
getTip={refuseCopy=true,
        ":pog:",
        "(RUR'U')R'FR2U'R'U'(RUR'F')",
        "\"Techmino.app\"は開発元が確認できないので開けません",
        "\"Techmino.app\"はあなたのマシンにダメージを与えます。ゴミ箱に破棄してください!!",
        "\"TechminOS\"",
        "\\jezevec/\\jezevec/\\jezevec/",
        "\\osk/\\osk/\\osk/",
        "↑↑↓↓←→←→BA",
        "$include<studio.h>",
        "0next 0hold",
        "100Line以内に23PC?",
        "1next 0hold",
        "1next 1hold!",
        "1next 6hold!",
        "20Gは全く新しい種類のゲームルールです!",
        "20PCって何?",
        "26TSDって何?",
        "2つの回転を使ってみよう、3つ使うとさらにいいです",
        "40-line Sprint WR: 14.915s by Reset_",
        "6next 1hold!",
        "6next 6hold?!",
        "低音を響かせろ!",
        "低いフレームレートはあなたの快適さを奪います",
        "複数のHoldを使ってみよう!",
        "回転がブロックにどう作用しているか気づいたかい?",
        "回転なしで40Lineを完走できる?",
        "今、B2B2Bを見なかったかい?",
        "今日も全力で頑張ってください!!",
        "警告:プログラマーアート",
        "君もGrand Masterだ!",
        "良いプレイには時間がかかります!",
        "全部で18種類のペントミノがあります",
        "全部で7種類のテトリミノがあります",
        "設定でキーコンフィグを変えられます!",
        "設定を確認しましょう!",
        "世界中の友達や敵ともうすぐ対戦できます",
        "私の心の中には確かにM@STERPIECEがあります",
        "素晴らしい!!しかし次はもっと良くなる…",
        "統計からセーブフォルダを開くことができます",
        "偉大なるシステムが間もなく来ます!",
        "現代的で親しみやすいこの積みを使いこなせるかい?",
        "小さな不具合で一日を無駄にしないように!",
        "一人用モードを遊ぼう!",
        "音楽が煩わしい?無音にすることができます",
        "英語のアプデ情報はdiscordで見られます",
        "左右移動なしで40Lineを完走できる?",
        "ALL SPIN!",
        "Am G F G",
        "B2B2B???",
        "B2B2B2Bなんて存在するの?",
        "B2B2B2Bは存在しません",
        "B2B2B2Bは可能?",
        "Back-to-Back Techrash, 10 Combo, PC!",
        "BGMやSFXの制作に協力いただける方は大歓迎です!",
        "Bridge clearが間もなく実装されます!",
        "Color clearが間もなく実装されます!",
        "DASとARRを低くすると、速くなるけど操作が難しくなる",
        "Hello world!",
        "I[R,H,M]Sは君を救うだろう",
        "I3とL3の2つだけはユニークなトリミノだ",
        "l-=-1",
        "LrL RlR LLr RRl RRR LLL FFF RfR RRf rFF",
        "Lua No.1",
        "Mix clearは間もなく実装されます!",
        "Nspire-CXのTechmino:存在はしますが同じゲームではありません",
        "O-Spin Triple!",
        "OHHHHHHHHHHHHHH",
        "Powered by LÖVE",
        "Powered by Un..LÖVE",
        "Rank Xの条件は、上級者でも難しくなるように設定されています",
        "Split clearが間もなく実装されます!",
        "sudo rm -rf /*",
        "Techmino rotation system(TRS)を楽しんで!",
        "Techmino楽しい!",
        "Techminoのdiscord鯖に入りましょう!",
        "Techminoは\"technique\"と\"tetromino\"を掛け合わせ造語です",
        "Techminoプレイヤーの未来はあなた達のものです",
        "TetroDictionary is now available in English.",
        "while(false)",
        "ZS JL T O I",
        "ゲーム内にはモード選択マップからじゃ入れない隠しモードがいくつかあります",
        "このゲームでは全てのspinに火力補正があります",
        "このゲームのほとんどの楽曲はBeepboxを用いて作曲されました",
        "サーバーが不規則に落ちます",
        "スタッフロールの背景に流れている名前はスポンサーの名前です",
        "タブレットやスマホでもキーボードを接続できます(IOSにはそんな機能ないと思うけど)",
        "なにかアイデアがありますか?Discordで提案してください!",
        "なんだこの安っぽいUIと音楽は、呆れた",
        "バグを見つけた?Githubのissueに報告しよう!",
        "バグを直接見ないで!",
        "バトルロワイアルモード実装!無料で遊べる落ちものパズルゲーム!!",
        "ピースごとに出現する方向を変えられます",
        "フレームレートを上げればより快適に",
        "ヘッドフォンを付ければより快適に",
        "ほとんどのメニューアイコンはUnicode PUAにあるself-drawn glyphsを用いて作られています",
        "マルチプレイで遊ぼう!あなたの常識が壊されるでしょう",
        "メニューをシンプルモードにした場合、イースターエッグがなくなります",
        "ローディング中!シーンチェンジの間だけじゃないです!",
        "Zのおすすめ(1):東方Projectをやってみよう!",
        "Zのおすすめ(2):Minecraftをやってみよう!",
        "Zのおすすめ(3):Osu!をやってみよう!",
        "Zのおすすめ(4):Quatrackをやってみよう!",
        "Zのおすすめ(5):Terrariaをやってみよう!",
        "Zのおすすめ(6):Celesteをやってみよう!",
        "Zのおすすめ(7):World of gooをやってみよう!",
        "Zのおすすめ(8):Orzmicをやってみよう!",
        "Zのおすすめ(9):Puyo Puyoをやってみよう!",
        "Zのおすすめ(10):Phigrosをやってみよう!",
        "Zのおすすめ(11):VVVVVVをやってみよう!",
        "Zのおすすめ(12):Ballanceをやってみよう!",
        "Zのおすすめ(13):Zumaをやってみよう!",
        "Zのおすすめ(14):Rubik's cubeをやってみよう!",
        "Zのおすすめ(15):15puzzleをやってみよう!",
        "Zのおすすめ(16):Minesweeperをやってみよう!",
        {C.H,"REGRET!!"},
        {C.lP,"Secret number: 626"},
        {C.lR,"Z ",C.lG,"S ",C.lS,"J ",C.lO,"L ",C.lP,"T ",C.lY,"O ",C.lC,"I"},
        {C.lY,"COOL!!"},
        {C.N,"Lua",C.Z," No.1"},
        {C.P,"T-spin!"},
        {C.R,"\"知的財産権関連法\""},
        {C.R,"\"DMCA濫用\""},
        {C.R,"DD",C.Z," Cannon=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"D",C.Z," Cannon"},
        {C.R,"DT",C.Z," Cannon=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"T",C.Z," Cannon"},
        {C.R,"LrL ",C.G,"RlR ",C.B,"LLr ",C.O,"RRl ",C.P,"RRR ",C.P,"LLL ",C.C,"FFF ",C.Y,"RfR ",C.Y,"RRf ",C.Y,"rFF"},
        {C.Y,"O-Spin Triple!"},
        {C.Z,"What? ",C.lC,"Xspin?"},
    }
}