/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionValidator INHERIT QValidator

   //DATA class_id INIT Class_Id_QRegularExpressionValidator
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegularExpressionValidator>
#endif

/*
QRegularExpressionValidator(QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW1 )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW2 )
{
  QRegularExpression * par1 = (QRegularExpression *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( *par1, par2 );
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
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression (  ) );
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
    QRegularExpression * par1 = (QRegularExpression *) _qt5xhb_itemGetPtr(1);
    obj->setRegularExpression ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
