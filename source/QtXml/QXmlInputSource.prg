/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCHAR

CLASS QXmlInputSource

   DATA pointer
   DATA class_id INIT Class_Id_QXmlInputSource
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD fetchData
   METHOD next
   METHOD reset
   METHOD setData1
   METHOD setData2
   METHOD setData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlInputSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlInputSource>
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
#include <QXmlInputSource>
#endif
#endif

/*
QXmlInputSource ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlInputSource * o = new QXmlInputSource (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlInputSource *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlInputSource ( QIODevice * dev )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  QXmlInputSource * o = new QXmlInputSource ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlInputSource *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlInputSource ()
//[2]QXmlInputSource ( QIODevice * dev )

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString data () const
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_DATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->data (  ).toLatin1().data() );
  }
}


/*
virtual void fetchData ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_FETCHDATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->fetchData (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QChar next ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEXT )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->next (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
virtual void reset ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_RESET )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setData ( const QString & dat )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA1 )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( const QByteArray & dat )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA2 )
{
  QXmlInputSource * obj = (QXmlInputSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    obj->setData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void setData ( const QString & dat )
//[2]virtual void setData ( const QByteArray & dat )

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROM )
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

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETSELFDESTRUCTION )
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