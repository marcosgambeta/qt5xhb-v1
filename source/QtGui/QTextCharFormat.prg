/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QCOLOR
REQUEST QPEN
#endif

CLASS QTextCharFormat INHERIT QTextFormat

   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QTextCharFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextCharFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextCharFormat>
#endif

/*
QTextCharFormat()
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_NEW )
{
  QTextCharFormat * o = new QTextCharFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTCHARFORMAT_DELETE )
{
  QTextCharFormat * obj = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ISVALID )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setFontFamily(const QString &family)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTFAMILY )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontFamily ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fontFamily() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTFAMILY )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fontFamily ().toLatin1().data() );
  }
}


/*
void setFontPointSize(qreal size)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTPOINTSIZE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontPointSize ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal fontPointSize() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTPOINTSIZE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->fontPointSize () );
  }
}


/*
void setFontWeight(int weight)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTWEIGHT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontWeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int fontWeight() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTWEIGHT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontWeight () );
  }
}


/*
void setFontItalic(bool italic)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTITALIC )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontItalic ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontItalic() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTITALIC )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontItalic () );
  }
}


/*
void setFontCapitalization(QFont::Capitalization capitalization)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTCAPITALIZATION )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontCapitalization (  (QFont::Capitalization) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont::Capitalization fontCapitalization() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTCAPITALIZATION )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontCapitalization () );
  }
}


/*
void setFontLetterSpacingType(QFont::SpacingType letterSpacingType)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTLETTERSPACINGTYPE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontLetterSpacingType (  (QFont::SpacingType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont::SpacingType fontLetterSpacingType() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTLETTERSPACINGTYPE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontLetterSpacingType () );
  }
}


/*
void setFontLetterSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTLETTERSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontLetterSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal fontLetterSpacing() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTLETTERSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->fontLetterSpacing () );
  }
}


/*
void setFontWordSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTWORDSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontWordSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal fontWordSpacing() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTWORDSPACING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->fontWordSpacing () );
  }
}


/*
void setFontUnderline(bool underline)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTUNDERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontUnderline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontUnderline() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTUNDERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontUnderline () );
  }
}


/*
void setFontOverline(bool overline)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTOVERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontOverline ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontOverline() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTOVERLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontOverline () );
  }
}


/*
void setFontStrikeOut(bool strikeOut)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTRIKEOUT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontStrikeOut ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontStrikeOut() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTRIKEOUT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontStrikeOut () );
  }
}


/*
void setUnderlineColor(const QColor &color)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETUNDERLINECOLOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setUnderlineColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QColor underlineColor() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_UNDERLINECOLOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->underlineColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void setFontFixedPitch(bool fixedPitch)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTFIXEDPITCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontFixedPitch ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontFixedPitch() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTFIXEDPITCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontFixedPitch () );
  }
}


/*
void setFontStretch(int factor)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTRETCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontStretch ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int fontStretch() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTRETCH )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontStretch () );
  }
}


/*
void setFontStyleHint(QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTYLEHINT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QFont::PreferDefault : hb_parni(2);
    obj->setFontStyleHint (  (QFont::StyleHint) par1,  (QFont::StyleStrategy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontStyleStrategy(QFont::StyleStrategy strategy)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTSTYLESTRATEGY )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontStyleStrategy (  (QFont::StyleStrategy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont::StyleHint fontStyleHint() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTYLEHINT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontStyleHint () );
  }
}


/*
QFont::StyleStrategy fontStyleStrategy() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTSTYLESTRATEGY )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontStyleStrategy () );
  }
}


/*
void setFontHintingPreference(QFont::HintingPreference hintingPreference)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTHINTINGPREFERENCE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontHintingPreference (  (QFont::HintingPreference) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont::HintingPreference fontHintingPreference() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTHINTINGPREFERENCE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontHintingPreference () );
  }
}


/*
void setFontKerning(bool enable)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETFONTKERNING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontKerning ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontKerning() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_FONTKERNING )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontKerning () );
  }
}


/*
void setUnderlineStyle(UnderlineStyle style)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETUNDERLINESTYLE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUnderlineStyle (  (QTextCharFormat::UnderlineStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
UnderlineStyle underlineStyle() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_UNDERLINESTYLE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->underlineStyle () );
  }
}


/*
void setVerticalAlignment(VerticalAlignment alignment)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETVERTICALALIGNMENT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalAlignment (  (QTextCharFormat::VerticalAlignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
VerticalAlignment verticalAlignment() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_VERTICALALIGNMENT )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalAlignment () );
  }
}


/*
void setTextOutline(const QPen &pen)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTEXTOUTLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * par1 = (QPen *) _qt5xhb_itemGetPtr(1);
    obj->setTextOutline ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPen textOutline() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TEXTOUTLINE )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * ptr = new QPen( obj->textOutline () );
    _qt5xhb_createReturnClass ( ptr, "QPEN", true );
  }
}


/*
void setToolTip(const QString &tip)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTOOLTIP )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setToolTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toolTip() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TOOLTIP )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toolTip ().toLatin1().data() );
  }
}


/*
void setAnchor(bool anchor)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAnchor ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isAnchor() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ISANCHOR )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAnchor () );
  }
}


/*
void setAnchorHref(const QString &value)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHORHREF )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAnchorHref ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString anchorHref() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ANCHORHREF )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->anchorHref ().toLatin1().data() );
  }
}


/*
void setAnchorName(const QString &name)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHORNAME )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAnchorName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString anchorName() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ANCHORNAME )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->anchorName ().toLatin1().data() );
  }
}


/*
void setAnchorNames(const QStringList &names)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETANCHORNAMES )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
    //  par1 << temp;
    //}
    obj->setAnchorNames ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList anchorNames() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_ANCHORNAMES )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->anchorNames ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setTableCellRowSpan(int tableCellRowSpan)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTABLECELLROWSPAN )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTableCellRowSpan ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int tableCellRowSpan() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TABLECELLROWSPAN )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tableCellRowSpan () );
  }
}


/*
void setTableCellColumnSpan(int tableCellColumnSpan)
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_SETTABLECELLCOLUMNSPAN )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTableCellColumnSpan ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int tableCellColumnSpan() const
*/
HB_FUNC_STATIC( QTEXTCHARFORMAT_TABLECELLCOLUMNSPAN )
{
  QTextCharFormat * obj = (QTextCharFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tableCellColumnSpan () );
  }
}



#pragma ENDDUMP
