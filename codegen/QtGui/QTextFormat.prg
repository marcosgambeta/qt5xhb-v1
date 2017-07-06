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

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD merge
   METHOD isValid
   METHOD type
   METHOD objectIndex
   METHOD setObjectIndex
   METHOD property
   METHOD setProperty1
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
HB_FUNC_STATIC( QTEXTFORMAT_NEW1 )
{
  QTextFormat * o = new QTextFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextFormat(int type)
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW2 )
{
  QTextFormat * o = new QTextFormat ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextFormat(const QTextFormat &rhs)
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW3 )
{
  QTextFormat * o = new QTextFormat ( *PQTEXTFORMAT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextFormat()
//[2]QTextFormat(int type)
//[3]QTextFormat(const QTextFormat &rhs)

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTFORMAT_NEW3 );
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
HB_FUNC_STATIC( QTEXTFORMAT_SWAP )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * par1 = (QTextFormat *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void merge(const QTextFormat &other)
*/
HB_FUNC_STATIC( QTEXTFORMAT_MERGE )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->merge ( *PQTEXTFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISVALID )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int type() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TYPE )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->type () );
  }
}


/*
int objectIndex() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->objectIndex () );
  }
}


/*
void setObjectIndex(int object)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTINDEX )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setObjectIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant property(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->property ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
void clearProperty(int propertyId)
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearProperty ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_HASPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasProperty ( PINT(1) ) );
  }
}


/*
bool boolProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BOOLPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->boolProperty ( PINT(1) ) );
  }
}


/*
int intProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_INTPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->intProperty ( PINT(1) ) );
  }
}


/*
qreal doubleProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_DOUBLEPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->doubleProperty ( PINT(1) ) );
  }
}


/*
QString stringProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_STRINGPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stringProperty ( PINT(1) ) );
  }
}


/*
QColor colorProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_COLORPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->colorProperty ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QPen penProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_PENPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * ptr = new QPen( obj->penProperty ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPEN", true );
  }
}


/*
QBrush brushProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BRUSHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brushProperty ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
QTextLength lengthProperty(int propertyId) const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LENGTHPROPERTY )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->lengthProperty ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


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
HB_FUNC_STATIC( QTEXTFORMAT_PROPERTYCOUNT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->propertyCount () );
  }
}


/*
void setObjectType(int type)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETOBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setObjectType ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int objectType() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_OBJECTTYPE )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->objectType () );
  }
}


/*
bool isCharFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCharFormat () );
  }
}


/*
bool isBlockFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBlockFormat () );
  }
}


/*
bool isListFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isListFormat () );
  }
}


/*
bool isFrameFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFrameFormat () );
  }
}


/*
bool isImageFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isImageFormat () );
  }
}


/*
bool isTableFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTableFormat () );
  }
}


/*
bool isTableCellFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_ISTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTableCellFormat () );
  }
}


/*
QTextBlockFormat toBlockFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOBLOCKFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->toBlockFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}


/*
QTextCharFormat toCharFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOCHARFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->toCharFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
QTextListFormat toListFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOLISTFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->toListFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );
  }
}


/*
QTextTableFormat toTableFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->toTableFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );
  }
}


/*
QTextFrameFormat toFrameFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOFRAMEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->toFrameFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFRAMEFORMAT" );
  }
}


/*
QTextImageFormat toImageFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOIMAGEFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextImageFormat * ptr = new QTextImageFormat( obj->toImageFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTIMAGEFORMAT" );
  }
}


/*
QTextTableCellFormat toTableCellFormat() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_TOTABLECELLFORMAT )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableCellFormat * ptr = new QTextTableCellFormat( obj->toTableCellFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLECELLFORMAT" );
  }
}


/*
void setLayoutDirection(Qt::LayoutDirection direction)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETLAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::LayoutDirection layoutDirection() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_LAYOUTDIRECTION )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->layoutDirection () );
  }
}


/*
void setBackground(const QBrush &brush)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBackground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush background() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_BACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void clearBackground()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARBACKGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearBackground ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForeground(const QBrush &brush)
*/
HB_FUNC_STATIC( QTEXTFORMAT_SETFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setForeground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush foreground() const
*/
HB_FUNC_STATIC( QTEXTFORMAT_FOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void clearForeground()
*/
HB_FUNC_STATIC( QTEXTFORMAT_CLEARFOREGROUND )
{
  QTextFormat * obj = (QTextFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearForeground ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
