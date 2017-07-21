$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QCOLOR
REQUEST QPEN
#endif

CLASS QTextCharFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setFont
   METHOD font
   METHOD setFontFamily
   METHOD fontFamily
   METHOD setFontPointSize
   METHOD fontPointSize
   METHOD setFontWeight
   METHOD fontWeight
   METHOD setFontItalic
   METHOD fontItalic
   METHOD setFontCapitalization
   METHOD fontCapitalization
   METHOD setFontLetterSpacingType
   METHOD fontLetterSpacingType
   METHOD setFontLetterSpacing
   METHOD fontLetterSpacing
   METHOD setFontWordSpacing
   METHOD fontWordSpacing
   METHOD setFontUnderline
   METHOD fontUnderline
   METHOD setFontOverline
   METHOD fontOverline
   METHOD setFontStrikeOut
   METHOD fontStrikeOut
   METHOD setUnderlineColor
   METHOD underlineColor
   METHOD setFontFixedPitch
   METHOD fontFixedPitch
   METHOD setFontStretch
   METHOD fontStretch
   METHOD setFontStyleHint
   METHOD setFontStyleStrategy
   METHOD fontStyleHint
   METHOD fontStyleStrategy
   METHOD setFontHintingPreference
   METHOD fontHintingPreference
   METHOD setFontKerning
   METHOD fontKerning
   METHOD setUnderlineStyle
   METHOD underlineStyle
   METHOD setVerticalAlignment
   METHOD verticalAlignment
   METHOD setTextOutline
   METHOD textOutline
   METHOD setToolTip
   METHOD toolTip
   METHOD setAnchor
   METHOD isAnchor
   METHOD setAnchorHref
   METHOD anchorHref
   METHOD setAnchorName
   METHOD anchorName
   METHOD setAnchorNames
   METHOD anchorNames
   METHOD setTableCellRowSpan
   METHOD tableCellRowSpan
   METHOD setTableCellColumnSpan
   METHOD tableCellColumnSpan

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextCharFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setFont(const QFont &font)
*/
$method=|void|setFont|const QFont &

/*
QFont font() const
*/
$method=|QFont|font|

/*
void setFontFamily(const QString &family)
*/
$method=|void|setFontFamily|const QString &

/*
QString fontFamily() const
*/
$method=|QString|fontFamily|

/*
void setFontPointSize(qreal size)
*/
$method=|void|setFontPointSize|qreal

/*
qreal fontPointSize() const
*/
$method=|qreal|fontPointSize|

/*
void setFontWeight(int weight)
*/
$method=|void|setFontWeight|int

/*
int fontWeight() const
*/
$method=|int|fontWeight|

/*
void setFontItalic(bool italic)
*/
$method=|void|setFontItalic|bool

/*
bool fontItalic() const
*/
$method=|bool|fontItalic|

/*
void setFontCapitalization(QFont::Capitalization capitalization)
*/
$method=|void|setFontCapitalization|QFont::Capitalization

/*
QFont::Capitalization fontCapitalization() const
*/
$method=|QFont::Capitalization|fontCapitalization|

/*
void setFontLetterSpacingType(QFont::SpacingType letterSpacingType)
*/
$method=|void|setFontLetterSpacingType|QFont::SpacingType

/*
QFont::SpacingType fontLetterSpacingType() const
*/
$method=|QFont::SpacingType|fontLetterSpacingType|

/*
void setFontLetterSpacing(qreal spacing)
*/
$method=|void|setFontLetterSpacing|qreal

/*
qreal fontLetterSpacing() const
*/
$method=|qreal|fontLetterSpacing|

/*
void setFontWordSpacing(qreal spacing)
*/
$method=|void|setFontWordSpacing|qreal

/*
qreal fontWordSpacing() const
*/
$method=|qreal|fontWordSpacing|

/*
void setFontUnderline(bool underline)
*/
$method=|void|setFontUnderline|bool

/*
bool fontUnderline() const
*/
$method=|bool|fontUnderline|

/*
void setFontOverline(bool overline)
*/
$method=|void|setFontOverline|bool

/*
bool fontOverline() const
*/
$method=|bool|fontOverline|

/*
void setFontStrikeOut(bool strikeOut)
*/
$method=|void|setFontStrikeOut|bool

/*
bool fontStrikeOut() const
*/
$method=|bool|fontStrikeOut|

/*
void setUnderlineColor(const QColor &color)
*/
$method=|void|setUnderlineColor|const QColor &

/*
QColor underlineColor() const
*/
$method=|QColor|underlineColor|

/*
void setFontFixedPitch(bool fixedPitch)
*/
$method=|void|setFontFixedPitch|bool

/*
bool fontFixedPitch() const
*/
$method=|bool|fontFixedPitch|

/*
void setFontStretch(int factor)
*/
$method=|void|setFontStretch|int

/*
int fontStretch() const
*/
$method=|int|fontStretch|

/*
void setFontStyleHint(QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault)
*/
$method=|void|setFontStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

/*
void setFontStyleStrategy(QFont::StyleStrategy strategy)
*/
$method=|void|setFontStyleStrategy|QFont::StyleStrategy

/*
QFont::StyleHint fontStyleHint() const
*/
$method=|QFont::StyleHint|fontStyleHint|

/*
QFont::StyleStrategy fontStyleStrategy() const
*/
$method=|QFont::StyleStrategy|fontStyleStrategy|

/*
void setFontHintingPreference(QFont::HintingPreference hintingPreference)
*/
$method=|void|setFontHintingPreference|QFont::HintingPreference

/*
QFont::HintingPreference fontHintingPreference() const
*/
$method=|QFont::HintingPreference|fontHintingPreference|

/*
void setFontKerning(bool enable)
*/
$method=|void|setFontKerning|bool

/*
bool fontKerning() const
*/
$method=|bool|fontKerning|

/*
void setUnderlineStyle(UnderlineStyle style)
*/
$method=|void|setUnderlineStyle|QTextCharFormat::UnderlineStyle

/*
UnderlineStyle underlineStyle() const
*/
$method=|QTextCharFormat::UnderlineStyle|underlineStyle|

/*
void setVerticalAlignment(VerticalAlignment alignment)
*/
$method=|void|setVerticalAlignment|QTextCharFormat::VerticalAlignment

/*
VerticalAlignment verticalAlignment() const
*/
$method=|QTextCharFormat::VerticalAlignment|verticalAlignment|

/*
void setTextOutline(const QPen &pen)
*/
$method=|void|setTextOutline|const QPen &

/*
QPen textOutline() const
*/
$method=|QPen|textOutline|

/*
void setToolTip(const QString &tip)
*/
$method=|void|setToolTip|const QString &

/*
QString toolTip() const
*/
$method=|QString|toolTip|

/*
void setAnchor(bool anchor)
*/
$method=|void|setAnchor|bool

/*
bool isAnchor() const
*/
$method=|bool|isAnchor|

/*
void setAnchorHref(const QString &value)
*/
$method=|void|setAnchorHref|const QString &

/*
QString anchorHref() const
*/
$method=|QString|anchorHref|

/*
void setAnchorName(const QString &name)
*/
$method=|void|setAnchorName|const QString &

/*
QString anchorName() const
*/
$method=|QString|anchorName|

/*
void setAnchorNames(const QStringList &names)
*/
$method=|void|setAnchorNames|const QStringList &

/*
QStringList anchorNames() const
*/
$method=|QStringList|anchorNames|

/*
void setTableCellRowSpan(int tableCellRowSpan)
*/
$method=|void|setTableCellRowSpan|int

/*
int tableCellRowSpan() const
*/
$method=|int|tableCellRowSpan|

/*
void setTableCellColumnSpan(int tableCellColumnSpan)
*/
$method=|void|setTableCellColumnSpan|int

/*
int tableCellColumnSpan() const
*/
$method=|int|tableCellColumnSpan|

#pragma ENDDUMP
