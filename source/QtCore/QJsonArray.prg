/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONVALUE
REQUEST QVARIANT
#endif

CLASS QJsonArray

   DATA pointer
   DATA class_id INIT Class_Id_QJsonArray
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD contains
   METHOD count
   METHOD empty
   METHOD first
   METHOD insert
   METHOD isEmpty
   METHOD last
   METHOD pop_back
   METHOD pop_front
   METHOD prepend
   METHOD push_back
   METHOD push_front
   METHOD removeAt
   METHOD removeFirst
   METHOD removeLast
   METHOD replace
   METHOD size
   METHOD takeAt
   METHOD toVariantList
   METHOD fromStringList
   METHOD fromVariantList
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJsonArray
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonArray>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonArray>
#endif

#include <QVariantList>
#include <QStringList>

/*
QJsonArray()
*/
HB_FUNC_STATIC( QJSONARRAY_NEW1 )
{
  QJsonArray * o = new QJsonArray (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QJsonArray(const QJsonArray & other)
*/
HB_FUNC_STATIC( QJSONARRAY_NEW2 )
{
  QJsonArray * par1 = (QJsonArray *) _qt5xhb_itemGetPtr(1);
  QJsonArray * o = new QJsonArray ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QJsonArray()
//[2]QJsonArray(const QJsonArray & other)

HB_FUNC_STATIC( QJSONARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QJSONARRAY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    HB_FUNC_EXEC( QJSONARRAY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONARRAY_DELETE )
{
  QJsonArray * obj = (QJsonArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_APPEND )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
    obj->append ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QJsonValue at(int i) const
*/
HB_FUNC_STATIC( QJSONARRAY_AT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->at ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}






/*
bool contains(const QJsonValue & value) const
*/
HB_FUNC_STATIC( QJSONARRAY_CONTAINS )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QJSONARRAY_COUNT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
bool empty() const
*/
HB_FUNC_STATIC( QJSONARRAY_EMPTY )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->empty (  ) );
  }
}





/*
QJsonValue first() const
*/
HB_FUNC_STATIC( QJSONARRAY_FIRST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->first (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}


/*
void insert(int i, const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_INSERT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par2 = (QJsonValue *) _qt5xhb_itemGetPtr(2);
    obj->insert ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONARRAY_ISEMPTY )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QJsonValue last() const
*/
HB_FUNC_STATIC( QJSONARRAY_LAST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->last (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}


/*
void pop_back()
*/
HB_FUNC_STATIC( QJSONARRAY_POP_BACK )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pop_back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void pop_front()
*/
HB_FUNC_STATIC( QJSONARRAY_POP_FRONT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pop_front (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void prepend(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PREPEND )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
    obj->prepend ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_back(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PUSH_BACK )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
    obj->push_back ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_front(const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_PUSH_FRONT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
    obj->push_front ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAt(int i)
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVEAT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAt ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeFirst()
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVEFIRST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeFirst (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeLast()
*/
HB_FUNC_STATIC( QJSONARRAY_REMOVELAST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeLast (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void replace(int i, const QJsonValue & value)
*/
HB_FUNC_STATIC( QJSONARRAY_REPLACE )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * par2 = (QJsonValue *) _qt5xhb_itemGetPtr(2);
    obj->replace ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int size() const
*/
HB_FUNC_STATIC( QJSONARRAY_SIZE )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QJsonValue takeAt(int i)
*/
HB_FUNC_STATIC( QJSONARRAY_TAKEAT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->takeAt ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}


/*
QVariantList toVariantList() const
*/
HB_FUNC_STATIC( QJSONARRAY_TOVARIANTLIST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariantList list = obj->toVariantList (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QVARIANT" );
    #else
    pDynSym = hb_dynsymFindName( "QVARIANT" );
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
        hb_itemPutPtr( pItem, (QVariant *) new QVariant( list[i] ) );
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
static QJsonArray fromStringList(const QStringList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMSTRINGLIST )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  QJsonArray * ptr = new QJsonArray( QJsonArray::fromStringList ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
}


/*
static QJsonArray fromVariantList(const QVariantList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMVARIANTLIST )
{
QVariantList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QJsonArray * ptr = new QJsonArray( QJsonArray::fromVariantList ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
}



HB_FUNC_STATIC( QJSONARRAY_NEWFROM )
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

HB_FUNC_STATIC( QJSONARRAY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONARRAY_NEWFROM );
}

HB_FUNC_STATIC( QJSONARRAY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONARRAY_NEWFROM );
}

HB_FUNC_STATIC( QJSONARRAY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONARRAY_SETSELFDESTRUCTION )
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