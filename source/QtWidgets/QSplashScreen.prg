/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   DATA class_id INIT Class_Id_QSplashScreen
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD setPixmap
   METHOD repaint
   METHOD clearMessage
   METHOD showMessage
   METHOD onMessageChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplashScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSplashScreen>
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
#include <QSplashScreen>
#endif
#endif

/*
QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPixmap par1 = ISNIL(1)? QPixmap() : *(QPixmap *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QSplashScreen * o = new QSplashScreen ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSplashScreen *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
  QPixmap par2 = ISNIL(2)? QPixmap() : *(QPixmap *) _qtxhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QSplashScreen * o = new QSplashScreen ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSplashScreen *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
//[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSPLASHSCREEN_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSPLASHSCREEN_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSPLASHSCREEN_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void finish ( QWidget * mainWin )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_FINISH )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->finish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QPixmap pixmap () const
*/
HB_FUNC_STATIC( QSPLASHSCREEN_PIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SETPIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void repaint ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_REPAINT )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->repaint (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_CLEARMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMessage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SHOWMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QColor par3 = ISNIL(3)? Qt::black : ISOBJECT(3)? *(QColor *) _qtxhb_itemGetPtr(3) : QColor(hb_parc(3));
    obj->showMessage ( par1, (int) ISNIL(2)? Qt::AlignLeft : hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
