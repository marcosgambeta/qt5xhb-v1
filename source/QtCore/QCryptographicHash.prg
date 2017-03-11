/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QCryptographicHash

   DATA pointer
   DATA class_id INIT Class_Id_QCryptographicHash
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reset
   METHOD addData1
   METHOD addData2
   METHOD addData3
   METHOD addData
   METHOD result
   METHOD hash
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCryptographicHash
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCryptographicHash>
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
#include <QCryptographicHash>
#endif

/*
QCryptographicHash(Algorithm method)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEW )
{
  int par1 = hb_parni(1);
  QCryptographicHash * o = new QCryptographicHash (  (QCryptographicHash::Algorithm) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCryptographicHash *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_DELETE )
{
  QCryptographicHash * obj = (QCryptographicHash *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void reset()
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_RESET )
{
  QCryptographicHash * obj = (QCryptographicHash *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData(const char *data, int length)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA1 )
{
  QCryptographicHash * obj = (QCryptographicHash *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->addData (  (const char *) par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const QByteArray &data)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA2 )
{
  QCryptographicHash * obj = (QCryptographicHash *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->addData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addData(QIODevice* device)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA3 )
{
  QCryptographicHash * obj = (QCryptographicHash *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->addData ( par1 ) );
  }
}


//[1]void addData(const char *data, int length)
//[2]void addData(const QByteArray &data)
//[3]bool addData(QIODevice* device)

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_ADDDATA3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray result() const
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_RESULT )
{
  QCryptographicHash * obj = (QCryptographicHash *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->result (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static QByteArray hash(const QByteArray &data, Algorithm method)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_HASH )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QByteArray * ptr = new QByteArray( QCryptographicHash::hash ( *par1,  (QCryptographicHash::Algorithm) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}



HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEWFROM )
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

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_NEWFROM );
}

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCRYPTOGRAPHICHASH_NEWFROM );
}

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_SETSELFDESTRUCTION )
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