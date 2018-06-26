%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD swap
   METHOD merge
   METHOD isValid
   METHOD type
   METHOD objectIndex
   METHOD setObjectIndex
   METHOD property
   METHOD clearProperty
   METHOD hasProperty
   METHOD boolProperty
   METHOD intProperty
   METHOD doubleProperty
   METHOD stringProperty
   METHOD colorProperty
   METHOD penProperty
   METHOD brushProperty
   METHOD lengthProperty
   METHOD lengthVectorProperty
   METHOD setProperty
   METHOD propertyCount
   METHOD setObjectType
   METHOD objectType
   METHOD isCharFormat
   METHOD isBlockFormat
   METHOD isListFormat
   METHOD isFrameFormat
   METHOD isImageFormat
   METHOD isTableFormat
   METHOD isTableCellFormat
   METHOD toBlockFormat
   METHOD toCharFormat
   METHOD toListFormat
   METHOD toTableFormat
   METHOD toFrameFormat
   METHOD toImageFormat
   METHOD toTableCellFormat
   METHOD setLayoutDirection
   METHOD layoutDirection
   METHOD setBackground
   METHOD background
   METHOD clearBackground
   METHOD setForeground
   METHOD foreground
   METHOD clearForeground

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFormat()
$internalConstructor=|new1|

$prototype=QTextFormat(int type)
$internalConstructor=|new2|int

$prototype=QTextFormat(const QTextFormat &rhs)
$internalConstructor=|new3|const QTextFormat &

//[1]QTextFormat()
//[2]QTextFormat(int type)
//[3]QTextFormat(const QTextFormat &rhs)

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    QTextFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QTextFormat &other)
$method=|void|swap|QTextFormat &

$prototype=void merge(const QTextFormat &other)
$method=|void|merge|const QTextFormat &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int type() const
$method=|int|type|

$prototype=int objectIndex() const
$method=|int|objectIndex|

$prototype=void setObjectIndex(int object)
$method=|void|setObjectIndex|int

$prototype=QVariant property(int propertyId) const
$method=|QVariant|property|int

$prototype=void clearProperty(int propertyId)
$method=|void|clearProperty|int

$prototype=bool hasProperty(int propertyId) const
$method=|bool|hasProperty|int

$prototype=bool boolProperty(int propertyId) const
$method=|bool|boolProperty|int

$prototype=int intProperty(int propertyId) const
$method=|int|intProperty|int

$prototype=qreal doubleProperty(int propertyId) const
$method=|qreal|doubleProperty|int

$prototype=QString stringProperty(int propertyId) const
$method=|QString|stringProperty|int

$prototype=QColor colorProperty(int propertyId) const
$method=|QColor|colorProperty|int

$prototype=QPen penProperty(int propertyId) const
$method=|QPen|penProperty|int

$prototype=QBrush brushProperty(int propertyId) const
$method=|QBrush|brushProperty|int

$prototype=QTextLength lengthProperty(int propertyId) const
$method=|QTextLength|lengthProperty|int

$prototype=QVector<QTextLength> lengthVectorProperty(int propertyId) const
$method=|QVector<QTextLength>|lengthVectorProperty|int

$prototype=void setProperty(int propertyId, const QVariant &value)
$internalMethod=|void|setProperty,setProperty1|int,const QVariant &

$prototype=void setProperty(int propertyId, const QVector<QTextLength> &lengths)
$internalMethod=|void|setProperty,setProperty2|int,const QVector<QTextLength> &

//[1]void setProperty(int propertyId, const QVariant &value)
//[2]void setProperty(int propertyId, const QVector<QTextLength> &lengths)

HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY )
{
  if( ISNUMPAR(1) && ISNUM(1) && ISQVARIANT(2) )
  {
    QTextFormat_setProperty1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) && ISARRAY(2) )
  {
    QTextFormat_setProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int propertyCount() const
$method=|int|propertyCount|

$prototype=void setObjectType(int type)
$method=|void|setObjectType|int

$prototype=int objectType() const
$method=|int|objectType|

$prototype=bool isCharFormat() const
$method=|bool|isCharFormat|

$prototype=bool isBlockFormat() const
$method=|bool|isBlockFormat|

$prototype=bool isListFormat() const
$method=|bool|isListFormat|

$prototype=bool isFrameFormat() const
$method=|bool|isFrameFormat|

$prototype=bool isImageFormat() const
$method=|bool|isImageFormat|

$prototype=bool isTableFormat() const
$method=|bool|isTableFormat|

$prototype=bool isTableCellFormat() const
$method=|bool|isTableCellFormat|

$prototype=QTextBlockFormat toBlockFormat() const
$method=|QTextBlockFormat|toBlockFormat|

$prototype=QTextCharFormat toCharFormat() const
$method=|QTextCharFormat|toCharFormat|

$prototype=QTextListFormat toListFormat() const
$method=|QTextListFormat|toListFormat|

$prototype=QTextTableFormat toTableFormat() const
$method=|QTextTableFormat|toTableFormat|

$prototype=QTextFrameFormat toFrameFormat() const
$method=|QTextFrameFormat|toFrameFormat|

$prototype=QTextImageFormat toImageFormat() const
$method=|QTextImageFormat|toImageFormat|

$prototype=QTextTableCellFormat toTableCellFormat() const
$method=|QTextTableCellFormat|toTableCellFormat|

$prototype=void setLayoutDirection(Qt::LayoutDirection direction)
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=Qt::LayoutDirection layoutDirection() const
$method=|Qt::LayoutDirection|layoutDirection|

$prototype=void setBackground(const QBrush &brush)
$method=|void|setBackground|const QBrush &

$prototype=QBrush background() const
$method=|QBrush|background|

$prototype=void clearBackground()
$method=|void|clearBackground|

$prototype=void setForeground(const QBrush &brush)
$method=|void|setForeground|const QBrush &

$prototype=QBrush foreground() const
$method=|QBrush|foreground|

$prototype=void clearForeground()
$method=|void|clearForeground|

$extraMethods

#pragma ENDDUMP
