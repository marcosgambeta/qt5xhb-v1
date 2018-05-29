%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFormat

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextCharFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFontFamily(const QString &family)
$method=|void|setFontFamily|const QString &

$prototype=QString fontFamily() const
$method=|QString|fontFamily|

$prototype=void setFontPointSize(qreal size)
$method=|void|setFontPointSize|qreal

$prototype=qreal fontPointSize() const
$method=|qreal|fontPointSize|

$prototype=void setFontWeight(int weight)
$method=|void|setFontWeight|int

$prototype=int fontWeight() const
$method=|int|fontWeight|

$prototype=void setFontItalic(bool italic)
$method=|void|setFontItalic|bool

$prototype=bool fontItalic() const
$method=|bool|fontItalic|

$prototype=void setFontCapitalization(QFont::Capitalization capitalization)
$method=|void|setFontCapitalization|QFont::Capitalization

$prototype=QFont::Capitalization fontCapitalization() const
$method=|QFont::Capitalization|fontCapitalization|

$prototype=void setFontLetterSpacingType(QFont::SpacingType letterSpacingType)
$method=|void|setFontLetterSpacingType|QFont::SpacingType

$prototype=QFont::SpacingType fontLetterSpacingType() const
$method=|QFont::SpacingType|fontLetterSpacingType|

$prototype=void setFontLetterSpacing(qreal spacing)
$method=|void|setFontLetterSpacing|qreal

$prototype=qreal fontLetterSpacing() const
$method=|qreal|fontLetterSpacing|

$prototype=void setFontWordSpacing(qreal spacing)
$method=|void|setFontWordSpacing|qreal

$prototype=qreal fontWordSpacing() const
$method=|qreal|fontWordSpacing|

$prototype=void setFontUnderline(bool underline)
$method=|void|setFontUnderline|bool

$prototype=bool fontUnderline() const
$method=|bool|fontUnderline|

$prototype=void setFontOverline(bool overline)
$method=|void|setFontOverline|bool

$prototype=bool fontOverline() const
$method=|bool|fontOverline|

$prototype=void setFontStrikeOut(bool strikeOut)
$method=|void|setFontStrikeOut|bool

$prototype=bool fontStrikeOut() const
$method=|bool|fontStrikeOut|

$prototype=void setUnderlineColor(const QColor &color)
$method=|void|setUnderlineColor|const QColor &

$prototype=QColor underlineColor() const
$method=|QColor|underlineColor|

$prototype=void setFontFixedPitch(bool fixedPitch)
$method=|void|setFontFixedPitch|bool

$prototype=bool fontFixedPitch() const
$method=|bool|fontFixedPitch|

$prototype=void setFontStretch(int factor)
$method=|void|setFontStretch|int

$prototype=int fontStretch() const
$method=|int|fontStretch|

$prototype=void setFontStyleHint(QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault)
$method=|void|setFontStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

$prototype=void setFontStyleStrategy(QFont::StyleStrategy strategy)
$method=|void|setFontStyleStrategy|QFont::StyleStrategy

$prototype=QFont::StyleHint fontStyleHint() const
$method=|QFont::StyleHint|fontStyleHint|

$prototype=QFont::StyleStrategy fontStyleStrategy() const
$method=|QFont::StyleStrategy|fontStyleStrategy|

$prototype=void setFontHintingPreference(QFont::HintingPreference hintingPreference)
$method=|void|setFontHintingPreference|QFont::HintingPreference

$prototype=QFont::HintingPreference fontHintingPreference() const
$method=|QFont::HintingPreference|fontHintingPreference|

$prototype=void setFontKerning(bool enable)
$method=|void|setFontKerning|bool

$prototype=bool fontKerning() const
$method=|bool|fontKerning|

$prototype=void setUnderlineStyle(UnderlineStyle style)
$method=|void|setUnderlineStyle|QTextCharFormat::UnderlineStyle

$prototype=UnderlineStyle underlineStyle() const
$method=|QTextCharFormat::UnderlineStyle|underlineStyle|

$prototype=void setVerticalAlignment(VerticalAlignment alignment)
$method=|void|setVerticalAlignment|QTextCharFormat::VerticalAlignment

$prototype=VerticalAlignment verticalAlignment() const
$method=|QTextCharFormat::VerticalAlignment|verticalAlignment|

$prototype=void setTextOutline(const QPen &pen)
$method=|void|setTextOutline|const QPen &

$prototype=QPen textOutline() const
$method=|QPen|textOutline|

$prototype=void setToolTip(const QString &tip)
$method=|void|setToolTip|const QString &

$prototype=QString toolTip() const
$method=|QString|toolTip|

$prototype=void setAnchor(bool anchor)
$method=|void|setAnchor|bool

$prototype=bool isAnchor() const
$method=|bool|isAnchor|

$prototype=void setAnchorHref(const QString &value)
$method=|void|setAnchorHref|const QString &

$prototype=QString anchorHref() const
$method=|QString|anchorHref|

$prototype=void setAnchorName(const QString &name)
$method=|void|setAnchorName|const QString &

$prototype=QString anchorName() const
$method=|QString|anchorName|

$prototype=void setAnchorNames(const QStringList &names)
$method=|void|setAnchorNames|const QStringList &

$prototype=QStringList anchorNames() const
$method=|QStringList|anchorNames|

$prototype=void setTableCellRowSpan(int tableCellRowSpan)
$method=|void|setTableCellRowSpan|int

$prototype=int tableCellRowSpan() const
$method=|int|tableCellRowSpan|

$prototype=void setTableCellColumnSpan(int tableCellColumnSpan)
$method=|void|setTableCellColumnSpan|int

$prototype=int tableCellColumnSpan() const
$method=|int|tableCellColumnSpan|

#pragma ENDDUMP
