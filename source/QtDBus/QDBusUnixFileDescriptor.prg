/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusUnixFileDescriptor

   DATA pointer
   DATA self_destruction INIT .F.

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
#include <QDBusUnixFileDescriptor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusUnixFileDescriptor>
#endif

/*
QDBusUnixFileDescriptor()
*/
void QDBusUnixFileDescriptor_new1 ()
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ();
  _qt5xhb_returnNewObject( o, true );
}

/*
explicit QDBusUnixFileDescriptor(int fileDescriptor)
*/
void QDBusUnixFileDescriptor_new2 ()
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ( PINT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
*/
void QDBusUnixFileDescriptor_new3 ()
{
  QDBusUnixFileDescriptor * o = new QDBusUnixFileDescriptor ( *PQDBUSUNIXFILEDESCRIPTOR(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDBusUnixFileDescriptor()
//[2]explicit QDBusUnixFileDescriptor(int fileDescriptor)
//[3]QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)

HB_FUNC( QDBUSUNIXFILEDESCRIPTOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusUnixFileDescriptor_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDBusUnixFileDescriptor_new2();
  }
  else if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
  {
    QDBusUnixFileDescriptor_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_DELETE )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SWAP )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
    {
#endif
      obj->swap ( *PQDBUSUNIXFILEDESCRIPTOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISVALID )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int fileDescriptor() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_FILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->fileDescriptor () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFileDescriptor ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void giveFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_GIVEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->giveFileDescriptor ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int takeFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_TAKEFILEDESCRIPTOR )
{
  QDBusUnixFileDescriptor * obj = (QDBusUnixFileDescriptor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->takeFileDescriptor () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static bool isSupported()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISSUPPORTED )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QDBusUnixFileDescriptor::isSupported () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
