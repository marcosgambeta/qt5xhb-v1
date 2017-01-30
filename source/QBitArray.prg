/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QBitArray

   DATA pointer
   DATA class_id INIT Class_Id_QBitArray
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD at
   METHOD clear
   METHOD clearBit
   METHOD count1
   METHOD count2
   METHOD count
   METHOD fill1
   METHOD fill2
   METHOD fill
   METHOD isEmpty
   METHOD isNull
   METHOD resize
   METHOD setBit1
   METHOD setBit2
   METHOD setBit
   METHOD size
   METHOD testBit
   METHOD toggleBit
   METHOD truncate
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBitArray
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBitArray>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBitArray>
#endif
#endif

/*
QBitArray ()
*/
HB_FUNC_STATIC( QBITARRAY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBitArray * o = new QBitArray (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBitArray ( int size, bool value = false )
*/
HB_FUNC_STATIC( QBITARRAY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  bool par2 = ISNIL(2)? false : hb_parl(2);
  QBitArray * o = new QBitArray ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBitArray ( const QBitArray & other )
*/
HB_FUNC_STATIC( QBITARRAY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBitArray * par1 = (QBitArray *) _qtxhb_itemGetPtr(1);
  QBitArray * o = new QBitArray ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBitArray ()
//[2]QBitArray ( int size, bool value = false )
//[3]QBitArray ( const QBitArray & other )

HB_FUNC_STATIC( QBITARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBITARRAY(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBITARRAY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool at ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_AT )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->at ( (int) hb_parni(1) ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QBITARRAY_CLEAR )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_CLEARBIT )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearBit ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QBITARRAY_COUNT1 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}

/*
int count ( bool on ) const
*/
HB_FUNC_STATIC( QBITARRAY_COUNT2 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count ( (bool) hb_parl(1) ) );
  }
}


//[1]int count () const
//[2]int count ( bool on ) const

HB_FUNC_STATIC( QBITARRAY_COUNT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITARRAY_COUNT1 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_COUNT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool fill ( bool value, int size = -1 )
*/
HB_FUNC_STATIC( QBITARRAY_FILL1 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fill ( (bool) hb_parl(1), (int) ISNIL(2)? -1 : hb_parni(2) ) );
  }
}

/*
void fill ( bool value, int begin, int end )
*/
HB_FUNC_STATIC( QBITARRAY_FILL2 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->fill ( (bool) hb_parl(1), (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool fill ( bool value, int size = -1 )
//[2]void fill ( bool value, int begin, int end )

HB_FUNC_STATIC( QBITARRAY_FILL )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITARRAY_FILL1 );
  }
  else if( ISNUMPAR(3) && ISLOG(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBITARRAY_FILL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QBITARRAY_ISEMPTY )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QBITARRAY_ISNULL )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
void resize ( int size )
*/
HB_FUNC_STATIC( QBITARRAY_RESIZE )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_SETBIT1 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBit ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBit ( int i, bool value )
*/
HB_FUNC_STATIC( QBITARRAY_SETBIT2 )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBit ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBit ( int i )
//[2]void setBit ( int i, bool value )

HB_FUNC_STATIC( QBITARRAY_SETBIT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_SETBIT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QBITARRAY_SETBIT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QBITARRAY_SIZE )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
bool testBit ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_TESTBIT )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->testBit ( (int) hb_parni(1) ) );
  }
}


/*
bool toggleBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_TOGGLEBIT )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->toggleBit ( (int) hb_parni(1) ) );
  }
}


/*
void truncate ( int pos )
*/
HB_FUNC_STATIC( QBITARRAY_TRUNCATE )
{
  QBitArray * obj = (QBitArray *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->truncate ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QBITARRAY_NEWFROM )
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

HB_FUNC_STATIC( QBITARRAY_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBITARRAY_SETSELFDESTRUCTION )
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