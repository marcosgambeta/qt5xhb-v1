/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDBusError

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD type
   METHOD name
   METHOD message
   METHOD isValid
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusError>
#endif

/*
QDBusError()
*/
HB_FUNC_STATIC( QDBUSERROR_NEW1 )
{
  QDBusError * o = new QDBusError (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusError(const DBusError *error)
*/
HB_FUNC_STATIC( QDBUSERROR_NEW2 )
{
  DBusError * par1 = (DBusError *) _qt5xhb_itemGetPtr(1);
  QDBusError * o = new QDBusError ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusError(const QDBusMessage& msg)
*/
HB_FUNC_STATIC( QDBUSERROR_NEW3 )
{
  QDBusError * o = new QDBusError (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusError(ErrorType error, const QString &message)
*/
HB_FUNC_STATIC( QDBUSERROR_NEW4 )
{
  int par1 = hb_parni(1);
  QDBusError * o = new QDBusError (  (QDBusError::ErrorType) par1, PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusError(const QDBusError &other)
*/
HB_FUNC_STATIC( QDBUSERROR_NEW5 )
{
  QDBusError * o = new QDBusError (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusError()
//[2]QDBusError(const DBusError *error)
//[3]QDBusError(const QDBusMessage& msg)
//[4]QDBusError(ErrorType error, const QString &message)
//[5]QDBusError(const QDBusError &other)

HB_FUNC_STATIC( QDBUSERROR_NEW )
{
}

HB_FUNC_STATIC( QDBUSERROR_DELETE )
{
  QDBusError * obj = (QDBusError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
ErrorType type() const
*/
HB_FUNC_STATIC( QDBUSERROR_TYPE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDBUSERROR_NAME )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QString message() const
*/
HB_FUNC_STATIC( QDBUSERROR_MESSAGE )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->message (  ).toLatin1().data() );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSERROR_ISVALID )
{
  QDBusError * obj = (QDBusError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
static QString errorString(ErrorType error)
*/
HB_FUNC_STATIC( QDBUSERROR_ERRORSTRING )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QDBusError::errorString (  (QDBusError::ErrorType) par1 ).toLatin1().data() );
}



HB_FUNC_STATIC( QDBUSERROR_NEWFROM )
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

HB_FUNC_STATIC( QDBUSERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSERROR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSERROR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSERROR_SETSELFDESTRUCTION )
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