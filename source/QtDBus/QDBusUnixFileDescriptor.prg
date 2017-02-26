/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDBusUnixFileDescriptor

   DATA pointer
   DATA class_id INIT Class_Id_QDBusUnixFileDescriptor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD fileDescriptor
   METHOD setFileDescriptor
   METHOD giveFileDescriptor
   METHOD takeFileDescriptor
   METHOD isSupported
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusUnixFileDescriptor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusUnixFileDescriptor>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusUnixFileDescriptor>
#endif
#endif

/*
QDBusUnixFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusUnixFileDescriptor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QDBusUnixFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusUnixFileDescriptor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusUnixFileDescriptor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDBusUnixFileDescriptor()
//[2]explicit QDBusUnixFileDescriptor(int fileDescriptor)
//[3]QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)

HB_FUNC( QDBUSUNIXFILEDESCRIPTOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
  {
    HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SWAP )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISVALID )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int fileDescriptor() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_FILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fileDescriptor (  ) );
  }
}

/*
void setFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFileDescriptor ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void giveFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_GIVEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->giveFileDescriptor ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int takeFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_TAKEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->takeFileDescriptor (  ) );
  }
}


/*
static bool isSupported()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISSUPPORTED )
{
  hb_retl( QDBusUnixFileDescriptor::isSupported (  ) );
}



HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM )
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

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETSELFDESTRUCTION )
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