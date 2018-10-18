%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum class QVirtualKeyboardInputEngine::TextCase
*/
#define QVirtualKeyboardInputEngine_Lower                            0
#define QVirtualKeyboardInputEngine_Upper                            1

/*
enum class QVirtualKeyboardInputEngine::InputMode
*/
#define QVirtualKeyboardInputEngine_Latin                            0
#define QVirtualKeyboardInputEngine_Numeric                          1
#define QVirtualKeyboardInputEngine_Dialable                         2
#define QVirtualKeyboardInputEngine_Pinyin                           3
#define QVirtualKeyboardInputEngine_Cangjie                          4
#define QVirtualKeyboardInputEngine_Zhuyin                           5
#define QVirtualKeyboardInputEngine_Hangul                           6
#define QVirtualKeyboardInputEngine_Hiragana                         7
#define QVirtualKeyboardInputEngine_Katakana                         8
#define QVirtualKeyboardInputEngine_FullwidthLatin                   9
#define QVirtualKeyboardInputEngine_Greek                            10
#define QVirtualKeyboardInputEngine_Cyrillic                         11
#define QVirtualKeyboardInputEngine_Arabic                           12
#define QVirtualKeyboardInputEngine_Hebrew                           13
#define QVirtualKeyboardInputEngine_ChineseHandwriting               14
#define QVirtualKeyboardInputEngine_JapaneseHandwriting              15
#define QVirtualKeyboardInputEngine_KoreanHandwriting                16

/*
enum class QVirtualKeyboardInputEngine::PatternRecognitionMode
*/
#define QVirtualKeyboardInputEngine_None                             0
#define QVirtualKeyboardInputEngine_PatternRecognitionDisabled       QVirtualKeyboardInputEngine_None
#define QVirtualKeyboardInputEngine_Handwriting                      1
#define QVirtualKeyboardInputEngine_HandwritingRecoginition          QVirtualKeyboardInputEngine_Handwriting

/*
enum class QVirtualKeyboardInputEngine::ReselectFlag
flags QVirtualKeyboardInputEngine::ReselectFlags
*/
#define QVirtualKeyboardInputEngine_WordBeforeCursor                 0x1
#define QVirtualKeyboardInputEngine_WordAfterCursor                  0x2
#define QVirtualKeyboardInputEngine_WordAtCursor                     hb_bitor(QVirtualKeyboardInputEngine_WordBeforeCursor, QVirtualKeyboardInputEngine_WordAfterCursor)
