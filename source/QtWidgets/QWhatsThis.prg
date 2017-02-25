/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QWhatsThis

   DATA pointer
   DATA class_id INIT Class_Id_QWhatsThis
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWhatsThis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QWhatsThis>
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
#include <QWhatsThis>
#endif
#endif

HB_FUNC_STATIC( QWHATSTHIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWhatsThis * obj = (QWhatsThis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
static QAction * createAction(QObject * parent = 0)
*/
HB_FUNC_STATIC( QWHATSTHIS_CREATEACTION )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QAction * ptr = QWhatsThis::createAction ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}


/*
static void enterWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_ENTERWHATSTHISMODE )
{
  QWhatsThis::enterWhatsThisMode (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void hideText()
*/
HB_FUNC_STATIC( QWHATSTHIS_HIDETEXT )
{
  QWhatsThis::hideText (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool inWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_INWHATSTHISMODE )
{
  hb_retl( QWhatsThis::inWhatsThisMode (  ) );
}


/*
static void leaveWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_LEAVEWHATSTHISMODE )
{
  QWhatsThis::leaveWhatsThisMode (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
*/
HB_FUNC_STATIC( QWHATSTHIS_SHOWTEXT )
{
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qtxhb_itemGetPtr(3);
  QWhatsThis::showText ( *par1, par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QWHATSTHIS_NEWFROM )
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

HB_FUNC_STATIC( QWHATSTHIS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWHATSTHIS_NEWFROM );
}

HB_FUNC_STATIC( QWHATSTHIS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWHATSTHIS_NEWFROM );
}

HB_FUNC_STATIC( QWHATSTHIS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWHATSTHIS_SETSELFDESTRUCTION )
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