/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QErrorMessage INHERIT QDialog

   DATA class_id INIT Class_Id_QErrorMessage
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
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
#include <QErrorMessage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QErrorMessage>
#endif

/*
explicit QErrorMessage ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QERRORMESSAGE_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QErrorMessage * o = new QErrorMessage ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QERRORMESSAGE_DELETE )
{
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
}

/*
void showMessage ( const QString & message )
*/
void QErrorMessage_showMessage1 ()
{
  QErrorMessage * obj = (QErrorMessage *) _qt5xhb_itemGetPtrStackSelfItem();
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
void QErrorMessage_showMessage2 ()
{
  QErrorMessage * obj = (QErrorMessage *) _qt5xhb_itemGetPtrStackSelfItem();
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
    QErrorMessage_showMessage1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QErrorMessage_showMessage2();
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
  _qt5xhb_createReturnClass ( ptr, "QERRORMESSAGE" );
}



#pragma ENDDUMP
