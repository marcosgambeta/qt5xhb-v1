/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGEXP
#endif

CLASS QRegExpValidator INHERIT QValidator

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD regExp
   METHOD setRegExp
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegExpValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegExpValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegExpValidator>
#endif

/*
QRegExpValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW1 )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QRegExpValidator * o = new QRegExpValidator ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QRegExpValidator ( const QRegExp & rx, QObject * parent )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW2 )
{
  QRegExp * par1 = (QRegExp *) _qt5xhb_itemGetPtr(1);
  QRegExpValidator * o = new QRegExpValidator ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QRegExpValidator ( QObject * parent = 0 )
//[2]QRegExpValidator ( const QRegExp & rx, QObject * parent )

HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QREGEXPVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQREGEXP(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QREGEXPVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGEXPVALIDATOR_DELETE )
{
  QRegExpValidator * obj = (QRegExpValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QRegExp & regExp () const
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_REGEXP )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->regExp () );
    _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}


/*
void setRegExp ( const QRegExp & rx )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_SETREGEXP )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) _qt5xhb_itemGetPtr(1);
    obj->setRegExp ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_VALIDATE )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}



#pragma ENDDUMP
