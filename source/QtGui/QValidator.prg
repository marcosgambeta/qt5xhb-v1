/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QValidator INHERIT QObject

   //DATA class_id INIT Class_Id_QValidator
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QValidator>
#endif


HB_FUNC_STATIC( QVALIDATOR_DELETE )
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QVALIDATOR_FIXUP )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale locale () const
*/
HB_FUNC_STATIC( QVALIDATOR_LOCALE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale (  ) );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QVALIDATOR_SETLOCALE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * par1 = (QLocale *) _qt5xhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual State validate ( QString & input, int & pos ) const = 0
*/
HB_FUNC_STATIC( QVALIDATOR_VALIDATE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}



#pragma ENDDUMP
