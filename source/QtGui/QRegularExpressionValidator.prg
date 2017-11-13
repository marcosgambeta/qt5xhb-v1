/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionValidator INHERIT QValidator

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD regularExpression
   METHOD setRegularExpression

   METHOD onRegularExpressionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegularExpressionValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegularExpressionValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegularExpressionValidator>
#endif

/*
QRegularExpressionValidator(QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW1 )
{
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW2 )
{
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( *PQREGULAREXPRESSION(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QRegularExpressionValidator(QObject *parent = 0)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_DELETE )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_REGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
}


/*
void setRegularExpression(const QRegularExpression &re)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_SETREGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRegularExpression ( *PQREGULAREXPRESSION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
