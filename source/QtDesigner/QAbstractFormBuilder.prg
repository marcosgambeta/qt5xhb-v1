/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QAbstractFormBuilder

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFormBuilder
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD save
   METHOD setWorkingDirectory
   METHOD workingDirectory
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFormBuilder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractFormBuilder>
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
#include <QAbstractFormBuilder>
#endif

/*
QAbstractFormBuilder ()
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEW )
{
  QAbstractFormBuilder * o = new QAbstractFormBuilder (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAbstractFormBuilder *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QABSTRACTFORMBUILDER_DELETE )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget * load ( QIODevice * device, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_LOAD )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
    QWidget * ptr = obj->load ( par1, par2 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual void save ( QIODevice * device, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SAVE )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->save ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWorkingDirectory ( const QDir & directory )
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SETWORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
    obj->setWorkingDirectory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QABSTRACTFORMBUILDER_WORKINGDIRECTORY )
{
  QAbstractFormBuilder * obj = (QAbstractFormBuilder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * ptr = new QDir( obj->workingDirectory (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}



HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEWFROM )
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

HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QABSTRACTFORMBUILDER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFORMBUILDER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QABSTRACTFORMBUILDER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QABSTRACTFORMBUILDER_SETSELFDESTRUCTION )
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