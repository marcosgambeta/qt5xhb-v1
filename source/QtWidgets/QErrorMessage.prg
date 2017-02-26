/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QErrorMessage INHERIT QDialog

   DATA class_id INIT Class_Id_QErrorMessage
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD showMessage1
   METHOD showMessage2
   METHOD showMessage
   METHOD qtHandler
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QErrorMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QErrorMessage>
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
#include <QErrorMessage>
#endif
#endif

/*
explicit QErrorMessage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QERRORMESSAGE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QErrorMessage * o = new QErrorMessage ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QErrorMessage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QERRORMESSAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QErrorMessage * obj = (QErrorMessage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void showMessage ( const QString & message )
*/
HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE1 )
{
  QErrorMessage * obj = (QErrorMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->showMessage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, const QString & type )
*/
HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE2 )
{
  QErrorMessage * obj = (QErrorMessage *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->showMessage ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void showMessage ( const QString & message )
//[2]void showMessage ( const QString & message, const QString & type )

HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QERRORMESSAGE_SHOWMESSAGE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QERRORMESSAGE_SHOWMESSAGE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QErrorMessage * qtHandler ()
*/
HB_FUNC_STATIC( QERRORMESSAGE_QTHANDLER )
{
  QErrorMessage * ptr = QErrorMessage::qtHandler (  );
  _qt4xhb_createReturnClass ( ptr, "QERRORMESSAGE" );
}



#pragma ENDDUMP
