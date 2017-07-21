$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QCOLOR
REQUEST QPEN
REQUEST QBRUSH
REQUEST QTEXTLENGTH
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTLISTFORMAT
REQUEST QTEXTTABLEFORMAT
REQUEST QTEXTFRAMEFORMAT
REQUEST QTEXTIMAGEFORMAT
REQUEST QTEXTTABLECELLFORMAT
#endif

CLASS QTextFormat

   DATA pointer
   DATA self_destruction INIT .F.

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
   METHOD setProperty1
   METHOD setProperty2
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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextFormat()
*/
$internalConstructor=|new1|

/*
QTextFormat(int type)
*/
$internalConstructor=|new2|int

/*
QTextFormat(const QTextFormat &rhs)
*/
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

/*
void swap(QTextFormat &other)
*/
$method=|void|swap|QTextFormat &

/*
void merge(const QTextFormat &other)
*/
$method=|void|merge|const QTextFormat &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int type() const
*/
$method=|int|type|

/*
int objectIndex() const
*/
$method=|int|objectIndex|

/*
void setObjectIndex(int object)
*/
$method=|void|setObjectIndex|int

/*
QVariant property(int propertyId) const
*/
$method=|QVariant|property|int

/*
void clearProperty(int propertyId)
*/
$method=|void|clearProperty|int

/*
bool hasProperty(int propertyId) const
*/
$method=|bool|hasProperty|int

/*
bool boolProperty(int propertyId) const
*/
$method=|bool|boolProperty|int

/*
int intProperty(int propertyId) const
*/
$method=|int|intProperty|int

/*
qreal doubleProperty(int propertyId) const
*/
$method=|qreal|doubleProperty|int

/*
QString stringProperty(int propertyId) const
*/
$method=|QString|stringProperty|int

/*
QColor colorProperty(int propertyId) const
*/
$method=|QColor|colorProperty|int

/*
QPen penProperty(int propertyId) const
*/
$method=|QPen|penProperty|int

/*
QBrush brushProperty(int propertyId) const
*/
$method=|QBrush|brushProperty|int

/*
QTextLength lengthProperty(int propertyId) const
*/
$method=|QTextLength|lengthProperty|int

/*
QVector<QTextLength> lengthVectorProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHVECTORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<QTextLength> list = obj->lengthVectorProperty ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTLENGTH" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTextLength *) new QTextLength ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void setProperty(int propertyId, const QVariant &value)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY1 )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( PINT(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProperty(int propertyId, const QVector<QTextLength> &lengths)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY2 )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<QTextLength> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->setProperty ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int propertyCount() const
*/
$method=|int|propertyCount|

/*
void setObjectType(int type)
*/
$method=|void|setObjectType|int

/*
int objectType() const
*/
$method=|int|objectType|

/*
bool isCharFormat() const
*/
$method=|bool|isCharFormat|

/*
bool isBlockFormat() const
*/
$method=|bool|isBlockFormat|

/*
bool isListFormat() const
*/
$method=|bool|isListFormat|

/*
bool isFrameFormat() const
*/
$method=|bool|isFrameFormat|

/*
bool isImageFormat() const
*/
$method=|bool|isImageFormat|

/*
bool isTableFormat() const
*/
$method=|bool|isTableFormat|

/*
bool isTableCellFormat() const
*/
$method=|bool|isTableCellFormat|

/*
QTextBlockFormat toBlockFormat() const
*/
$method=|QTextBlockFormat|toBlockFormat|

/*
QTextCharFormat toCharFormat() const
*/
$method=|QTextCharFormat|toCharFormat|

/*
QTextListFormat toListFormat() const
*/
$method=|QTextListFormat|toListFormat|

/*
QTextTableFormat toTableFormat() const
*/
$method=|QTextTableFormat|toTableFormat|

/*
QTextFrameFormat toFrameFormat() const
*/
$method=|QTextFrameFormat|toFrameFormat|

/*
QTextImageFormat toImageFormat() const
*/
$method=|QTextImageFormat|toImageFormat|

/*
QTextTableCellFormat toTableCellFormat() const
*/
$method=|QTextTableCellFormat|toTableCellFormat|

/*
void setLayoutDirection(Qt::LayoutDirection direction)
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
Qt::LayoutDirection layoutDirection() const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
void setBackground(const QBrush &brush)
*/
$method=|void|setBackground|const QBrush &

/*
QBrush background() const
*/
$method=|QBrush|background|

/*
void clearBackground()
*/
$method=|void|clearBackground|

/*
void setForeground(const QBrush &brush)
*/
$method=|void|setForeground|const QBrush &

/*
QBrush foreground() const
*/
$method=|QBrush|foreground|

/*
void clearForeground()
*/
$method=|void|clearForeground|

$extraMethods

#pragma ENDDUMP
