/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QLOCALE
#endif

CLASS QResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QResource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QResource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QResource>
#endif

/*
QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
*/
HB_FUNC_STATIC( QRESOURCE_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && (ISQLOCALE(2)||ISNIL(2)) )
  {
    QLocale par2 = ISNIL(2)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(2);
    QResource * o = new QResource ( OPQSTRING(1,QString()), par2 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRESOURCE_DELETE )
{
  QResource * obj = (QResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString absoluteFilePath () const
*/
HB_FUNC_STATIC( QRESOURCE_ABSOLUTEFILEPATH )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->absoluteFilePath () );
  }
}

/*
const uchar * data () const
*/
HB_FUNC_STATIC( QRESOURCE_DATA )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const uchar * ptr = obj->data ();
    _qt5xhb_createReturnClass ( ptr, "UCHAR" );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QRESOURCE_FILENAME )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
bool isCompressed () const
*/
HB_FUNC_STATIC( QRESOURCE_ISCOMPRESSED )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isCompressed () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QRESOURCE_ISVALID )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QRESOURCE_LOCALE )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setFileName ( const QString & file )
*/
HB_FUNC_STATIC( QRESOURCE_SETFILENAME )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QRESOURCE_SETLOCALE )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qint64 size () const
*/
HB_FUNC_STATIC( QRESOURCE_SIZE )
{
  QResource * obj = (QResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->size () );
  }
}

/*
static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_REGISTERRESOURCE )
{
  if( ISCHAR(1) && ISOPTCHAR(2) )
  {
    RBOOL( QResource::registerResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
*/
HB_FUNC_STATIC( QRESOURCE_UNREGISTERRESOURCE )
{
  if( ISCHAR(1) && ISOPTCHAR(2) )
  {
    RBOOL( QResource::unregisterResource ( PQSTRING(1), OPQSTRING(2,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRESOURCE_NEWFROM )
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

HB_FUNC_STATIC( QRESOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QRESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QRESOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QRESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QRESOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRESOURCE_SETSELFDESTRUCTION )
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
