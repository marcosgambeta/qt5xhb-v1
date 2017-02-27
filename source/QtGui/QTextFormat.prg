/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
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
   DATA class_id INIT Class_Id_QTextFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QTextFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextFormat>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextFormat>
#endif
#endif

/*
QTextFormat()
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFormat * o = new QTextFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextFormat(int type)
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QTextFormat * o = new QTextFormat ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QTextFormat(const QTextFormat &rhs)
*/
HB_FUNC_STATIC( QTEXTFORMAT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFormat * par1 = (QTextFormat *) _qt5xhb_itemGetPtr(1);
  QTextFormat * o = new QTextFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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

HB_FUNC_STATIC( QTEXTFORMAT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextFormat * obj = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

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
    QTextFormat * par1 = (QTextFormat *) _qt5xhb_itemGetPtr(1);
    obj->merge ( *par1 );
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
    hb_retl( obj->isValid (  ) );
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
    hb_retni( obj->type (  ) );
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
    hb_retni( obj->objectIndex (  ) );
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
    obj->setObjectIndex ( (int) hb_parni(1) );
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
    QVariant * ptr = new QVariant( obj->property ( (int) hb_parni(1) ) );
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
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setProperty ( (int) hb_parni(1), *par2 );
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
    obj->clearProperty ( (int) hb_parni(1) );
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
    hb_retl( obj->hasProperty ( (int) hb_parni(1) ) );
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
    hb_retl( obj->boolProperty ( (int) hb_parni(1) ) );
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
    hb_retni( obj->intProperty ( (int) hb_parni(1) ) );
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
    hb_retnd( obj->doubleProperty ( (int) hb_parni(1) ) );
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
    hb_retc( (const char *) obj->stringProperty ( (int) hb_parni(1) ).toLatin1().data() );
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
    QColor * ptr = new QColor( obj->colorProperty ( (int) hb_parni(1) ) );
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
    QPen * ptr = new QPen( obj->penProperty ( (int) hb_parni(1) ) );
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
    QBrush * ptr = new QBrush( obj->brushProperty ( (int) hb_parni(1) ) );
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
    QTextLength * ptr = new QTextLength( obj->lengthProperty ( (int) hb_parni(1) ) );
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
    QVector<QTextLength> list = obj->lengthVectorProperty ( (int) hb_parni(1) );
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
    obj->setProperty ( (int) hb_parni(1), par2 );
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
    hb_retni( obj->propertyCount (  ) );
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
    obj->setObjectType ( (int) hb_parni(1) );
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
    hb_retni( obj->objectType (  ) );
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
    hb_retl( obj->isCharFormat (  ) );
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
    hb_retl( obj->isBlockFormat (  ) );
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
    hb_retl( obj->isListFormat (  ) );
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
    hb_retl( obj->isFrameFormat (  ) );
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
    hb_retl( obj->isImageFormat (  ) );
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
    hb_retl( obj->isTableFormat (  ) );
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
    hb_retl( obj->isTableCellFormat (  ) );
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
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->toBlockFormat (  ) );
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
    QTextCharFormat * ptr = new QTextCharFormat( obj->toCharFormat (  ) );
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
    QTextListFormat * ptr = new QTextListFormat( obj->toListFormat (  ) );
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
    QTextTableFormat * ptr = new QTextTableFormat( obj->toTableFormat (  ) );
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
    QTextFrameFormat * ptr = new QTextFrameFormat( obj->toFrameFormat (  ) );
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
    QTextImageFormat * ptr = new QTextImageFormat( obj->toImageFormat (  ) );
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
    QTextTableCellFormat * ptr = new QTextTableCellFormat( obj->toTableCellFormat (  ) );
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
    int par1 = hb_parni(1);
    obj->setLayoutDirection (  (Qt::LayoutDirection) par1 );
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
    hb_retni( obj->layoutDirection (  ) );
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
    QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
    obj->setBackground ( *par1 );
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
    QBrush * ptr = new QBrush( obj->background (  ) );
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
    obj->clearBackground (  );
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
    QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
    obj->setForeground ( *par1 );
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
    QBrush * ptr = new QBrush( obj->foreground (  ) );
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
    obj->clearForeground (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QTEXTFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
